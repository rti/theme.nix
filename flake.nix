{
  outputs = { ... }: {
    nixosModules.theme = import ./theme.nix;
  };
}
