{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
      svg = pkgs.writeText "gradient.svg" ''
        <svg xmlns="http://www.w3.org/2000/svg" width="3840" height="2160" viewBox="0 0 3840 2160">
          <defs>
            <linearGradient id="bg-grad" gradientUnits="userSpaceOnUse"
              x1="0" y1="0" x2="3840" y2="0"
              gradientTransform="rotate(15 1920 1080)">
              <stop offset="0%" stop-color="#00f5a0"/>
              <stop offset="100%" stop-color="#9b5cff"/>
            </linearGradient>
          </defs>
          <rect x="0" y="0" width="3840" height="2160" fill="url(#bg-grad)"/>
        </svg>
      '';
    in
    {
      nixosModules.theme = import ./theme.nix;
      packages.${system} = {
        svg = svg;
        jpg = pkgs.runCommand "gradient.jpg"
          { buildInputs = [ pkgs.librsvg pkgs.imagemagick ]; }
          ''
            rsvg-convert -o tmp.png ${svg}
            convert tmp.png $out
          '';
      };
    };
}
