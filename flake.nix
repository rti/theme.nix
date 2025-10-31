{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      nixosModules.theme = import ./theme.nix;
      packages.${system} = rec {
        gradient-svg = import ./gradient-svg.nix { inherit pkgs; };
        gradient-png = import ./gradient-png.nix { inherit pkgs; svg = gradient-svg; };
      };
    };
}
