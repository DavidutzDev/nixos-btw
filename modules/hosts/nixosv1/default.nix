{ self, inputs, ... }: {
  flake.nixosConfigurations.nixosv1 = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.nixosModules.nixosv1Configuration
    ];
  };
}
