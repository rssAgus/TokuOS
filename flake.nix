{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }: {

    nixosConfigurations.nixos = nixpkgs.nixosSystem {
      system = "x86_64-linux";

      modules = [
        ./hosts/default.nix
        ./hardware-configuration.nix

        home-manager.nixosMoodules.home-manager 
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;

          home-manager.users.agustin = import ./users/agustin/default.nix;
          home-manager.users.arusso = import ./users/arusso/default.nix;
        }
      ];
    };
  };
}
