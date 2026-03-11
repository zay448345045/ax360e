/**
 ******************************************************************************
 * Xenia : Xbox 360 Emulator Research Project                                 *
 ******************************************************************************
 * Copyright 2013 Ben Vanik. All rights reserved.                             *
 * Released under the BSD license - see LICENSE in the root for more details. *
 ******************************************************************************
 */

#include <stack>

#include "xenia/apu/audio_driver.h"
#include "xenia/apu/nop/nop_audio_system.h"

#include "xenia/apu/apu_flags.h"

namespace xe {
    namespace apu {
        namespace nop {

            class NopAudioDriver : public AudioDriver {
            public:
                xe::threading::Semaphore* semaphore_;
                NopAudioDriver(Memory* memory, xe::threading::Semaphore* semaphore,
                               uint32_t frequency = 48000, uint32_t channels = 6,
                               bool need_format_conversion = true)
                        :
                          semaphore_(semaphore),
                          frame_frequency_(frequency),
                          frame_channels_(channels),
                          need_format_conversion_(need_format_conversion) {
                    switch (frame_channels_) {
                        case 6:
                            channel_samples_ = 256;
                            break;
                        case 2:
                            channel_samples_ = 768;
                            break;
                        default:
                            assert_unhandled_case(frame_channels_);
                    }
                    frame_size_ = sizeof(float) * frame_channels_ * channel_samples_;
                }
                bool sdl_initialized_ = false;
                uint8_t sdl_device_channels_ = 0;

                float volume_ = 1.0f;

                uint32_t frame_frequency_;
                uint32_t frame_channels_;
                uint32_t channel_samples_;
                uint32_t frame_size_;
                bool need_format_conversion_;
                std::queue<float*> frames_queued_ = {};
                std::stack<float*> frames_unused_ = {};
                std::mutex frames_mutex_ = {};

                ~NopAudioDriver() override {
                    assert_true(frames_queued_.empty());
                    assert_true(frames_unused_.empty());
                }
                static void cb(NopAudioDriver* driver) {
                    while (true) {
                        std::this_thread::sleep_for(std::chrono::milliseconds(20));
                        std::unique_lock<std::mutex> guard(driver->frames_mutex_);
                        if (driver->frames_queued_.empty()) {
                            // std::memset(stream, 0, len);
                        } else {
                            auto buffer = driver->frames_queued_.front();
                            driver->frames_queued_.pop();
                            if (cvars::mute) {
                                // std::memset(stream, 0, len);
                            } else if (driver->need_format_conversion_) {
                                /* switch (driver->sdl_device_channels_) {
                                  case 2:
                                    conversion::sequential_6_BE_to_interleaved_2_LE(
                                        reinterpret_cast<float*>(stream), buffer,
                                        driver->channel_samples_);
                                    break;
                                  case 6:
                                    conversion::sequential_6_BE_to_interleaved_6_LE(
                                        reinterpret_cast<float*>(stream), buffer,
                                        driver->channel_samples_);
                                    break;
                                  default:
                                    assert_unhandled_case(driver->sdl_device_channels_);
                                    break;
                                }*/
                            } else {
                                assert_true(driver->sdl_device_channels_ == driver->frame_channels_);
                                /* if (driver->volume_ != 1.0f) {
                                  std::memset(stream, 0, len);
                                  SDL_MixAudioFormat(
                                      stream, reinterpret_cast<Uint8*>(buffer), AUDIO_F32, len,
                                      static_cast<int>(driver->volume_ * SDL_MIX_MAXVOLUME));
                                } else {
                                  std::memcpy(stream, buffer, len);
                                }*/
                            }
                            driver->frames_unused_.push(buffer);

                            auto ret = driver->semaphore_->Release(1, nullptr);
                            assert_true(ret);
                        }
                    }
                };
                bool Initialize() {
                    std::thread(cb, this).detach();
                    return true;
                }

                void Pause() override {
                }

                void Resume() override {
                }

                void SetVolume(float volume) override {
                    volume_ = volume;
                }

                void SubmitFrame(float* samples) override {
                    const auto frame = samples;

                    float* output_frame;
                    {
                        std::unique_lock<std::mutex> guard(frames_mutex_);
                        if (frames_unused_.empty()) {
                            output_frame = new float[frame_channels_ * channel_samples_];
                        } else {
                            output_frame = frames_unused_.top();
                            frames_unused_.pop();
                        }
                    }

                    std::memcpy(output_frame, frame, frame_size_);

                    {
                        std::unique_lock<std::mutex> guard(frames_mutex_);
                        frames_queued_.push(output_frame);
                    }
                }

                void Shutdown() {
                    std::unique_lock<std::mutex> guard(frames_mutex_);
                    while (!frames_unused_.empty()) {
                        delete[] frames_unused_.top();
                        frames_unused_.pop();
                    };
                    while (!frames_queued_.empty()) {
                        delete[] frames_queued_.front();
                        frames_queued_.pop();
                    };
                }
            };

            std::unique_ptr<AudioSystem> NopAudioSystem::Create(cpu::Processor* processor) {
                return std::make_unique<NopAudioSystem>(processor);
            }

            NopAudioSystem::NopAudioSystem(cpu::Processor* processor)
                    : AudioSystem(processor) {}

            NopAudioSystem::~NopAudioSystem() = default;

            X_STATUS NopAudioSystem::CreateDriver(size_t index,
                                                  xe::threading::Semaphore* semaphore,
                                                  AudioDriver** out_driver) {
                // return X_STATUS_NOT_IMPLEMENTED;
                auto driver = std::make_unique<NopAudioDriver>(memory_, semaphore);
                if (!driver->Initialize()) {
                    driver->Shutdown();
                    return X_STATUS_UNSUCCESSFUL;
                }

                *out_driver = driver.release();
                return X_STATUS_SUCCESS;
            }


            AudioDriver* NopAudioSystem::CreateDriver(xe::threading::Semaphore* semaphore,
                                              uint32_t frequency, uint32_t channels,
                                              bool need_format_conversion){
                return new NopAudioDriver(memory_, semaphore, frequency, channels, need_format_conversion);
            }

            void NopAudioSystem::DestroyDriver(AudioDriver* driver) {
                assert_not_null(driver);
                auto nopdriver = dynamic_cast<NopAudioDriver*>(driver);
                assert_not_null(nopdriver);
                nopdriver->Shutdown();
                delete nopdriver;
            }

        }  // namespace nop
    }  // namespace apu
}  // namespace xe
