{
  description = "Home Manager configuration of Shon Qwezon.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, nixpkgs-unstable, home-manager, ... }:
    {
      homeConfigurations = {
        macosh = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.aarch64-darwin;
          extraSpecialArgs = { pkgs-unstable = nixpkgs-unstable.legacyPackages.aarch64-darwin; };
          modules = [
            ./hosts/macosh.nix
          ];
        };
      };
    };
}
