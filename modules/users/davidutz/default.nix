{ self, inputs, ... }: {

  flake.nixosModules.davidutzUser = { pkgs, ... }: {
    imports = [
      inputs.home-manager.nixosModules.home-manager
      self.nixosModules.davidutzHome
    ];

    users.users.davidutz = {
      isNormalUser = true;
      description = "David Gheghea";
      extraGroups = [ "networkmanager" "wheel" ];
    };
  };
}
