# /etc/nixos/flake.nix

{
  description = "NixOS Flakes Config nix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";

    stylix = {
      url = "github:nix-community/stylix/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, stylix, ... }@inputs: 
  let
    system = "x86_64-linux";
    unstable = import nixpkgs-unstable {
      inherit system;
    };
  in
  {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = { inherit unstable inputs; };
      modules = [
        ./configuration.nix
	stylix.nixosModules.stylix
	home-manager.nixosModules.home-manager
	{
	  home-manager = {
	    useGlobalPkgs = true;
	    useUserPackages = true;
	    users.simenhani = import ./home-manager;
	    extraSpecialArgs = {
	      inherit inputs;
	      inherit unstable;
	    };
	  };
	}
      ];
    };
  };
}
