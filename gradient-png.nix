{ pkgs }:
pkgs.runCommand "gradient.png" { buildInputs = [ pkgs.imagemagick ]; } ''
  magick \
    -size 3840x2160 \
    -define \
      gradient:angle=30 \
      gradient:'#000000'-'#1e8195' \
    -channel RGB \
    -depth 16 -dither FloydSteinberg -depth 8 \
    -gaussian-blur 0.1% \
    $out
''
