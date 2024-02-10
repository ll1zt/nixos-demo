{
  description = "lllzt's NixOS Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    #inputs.alacritty-theme.url = "github:alexghr/alacritty-theme.nix";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager,  ... }@inputs: {
    nixosConfigurations = {
      lllzt = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./host 
          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.lllzt = import ./home;
           # home-manager.extraSpecialArgs = inputs;
          }

        ];

      };
    };
  };
  


}
