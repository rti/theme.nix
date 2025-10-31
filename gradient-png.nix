{ pkgs, svg }:
pkgs.runCommand "gradient.png" { buildInputs = [ pkgs.imagemagick ]; } ''
  magick -density 384 ${svg} -colorspace sRGB -depth 16 -filter Lanczos -resize 2000x $out
''
