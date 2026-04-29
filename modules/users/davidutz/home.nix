{ self, pkgs, ... }: {

  flake.nixosModules.davidutzHome = { pkgs, ... }: {
    home-manager = {
      useGlobalPkgs = true;
      useUserPackages = true;

      users.davidutz = { pkgs, ... }: {
        home.username = "davidutz";
        home.homeDirectory = "/home/davidutz";
        home.stateVersion = "25.11";

        home.packages = with pkgs; [
          vim
          neovim
        ];
      };
    };
  };
}
