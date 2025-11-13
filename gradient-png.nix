{ pkgs }:
pkgs.runCommand "gradient.png" { buildInputs = [ pkgs.imagemagick ]; } ''
  magick \
    -size 3840x2160 \
    -define \
      gradient:direction=north-east \
      gradient:'#000000'-'#3366cc' \
    -channel RGB \
    -depth 16 -dither FloydSteinberg -depth 8 \
    -gaussian-blur 0.1% \
    $out
''
