# av-length — command line app to get the length of an A/V file

## Usage

`av-length [-types] <AV file path>`

## Examples

>print the length of the audio file `myfile.caf`
`./av-length myfile.caf`

>print the length of the video file `myfile.m4v`
`./av-length myfile.m4v`

>print the file MIME types supported by `av-length`
`./av-length -types`

## Behaviour

`av-length` will print to stdout the duration in **seconds** of the audio-visual file at the path specified by `<AV file path>`. 

If the file is not a valid AV file, then `0` will be printed.

If the argument `-types` is given, a list of supported file MIME types will be printed.

## Current MIME types

At the time of writing, the supported file MIME types are as follows:

- audio/aacp
- video/3gpp2
- audio/mpeg3
- audio/mp3
- video/x-m2ts
- audio/x-caf
- audio/mpeg
- video/quicktime
- audio/x-mpeg3
- video/mp4
- audio/wav
- video/avi
- audio/scpls
- audio/mp4
- audio/x-mpg
- video/x-m4v
- audio/x-wav
- audio/x-aiff
- video/x-mpeg
- application/vnd.apple.mpegurl
- video/3gpp
- video/mpeg2
- audio/x-mpeg
- audio/wave
- audio/x-m4r
- audio/x-mp3
- audio/AMR
- video/x-mpg
- audio/aiff
- video/mpg
- video/mpeg
- audio/3gpp2
- audio/aac
- audio/mpg
- audio/mpegurl
- video/m2ts
- audio/x-m4b
- audio/x-scpls
- application/mp4
- audio/x-m4p
- audio/x-mpegurl
- video/x-mpeg2
- audio/x-aac
- audio/3gpp
- application/x-mpegurl
- audio/basic
- audio/x-m4a










