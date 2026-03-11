
project("libavformat")
  uuid("CEF2E128-AA08-4A36-8045-0AA68A556364")
  kind("StaticLib")
  language("C")
  ffmpeg_common()

  filter("files:not wmaprodec.c")
    warnings "Off"
  filter({})

  links({
    "libavutil",
  })

  -- libavformat/Makefile:
  --   HEADERS:
  files({
    "avformat.h",
    "avio.h",
    "version.h",
  })
  --   OBJS:
  files({
    "allformats.c",
    "avio.c",
    "aviobuf.c",
    "dump.c",
    "format.c",
    "id3v1.c",
    "id3v2.c",
    "metadata.c",
    "mux.c",
    "options.c",
    "os_support.c",
    "protocols.c",
    "riff.c",
    "sdp.c",
    "url.c",
    "utils.c",
    "riffdec.c",
    "asfdec_f.c",
    "asf.c",
    "asfcrypt.c",
    "avlanguage.c",
    "mp3dec.c",
    "replaygain.c",
    "file.c",
  })
  filter({"platforms:Windows-*"})
  files({
    "file_open.c",
  })
  filter({})
