{
  description = "First NixOS Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    # https://mirrors.ustc.edu.cn/nix-channels/nixos-24.11/nixexprs.tar.xz
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim/nixos-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, nixvim, ... }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem{
      system = "x86_64-linux";
      modules = [
	      ./nixos/configuration.nix

	      # home-manager
	      home-manager.nixosModules.home-manager
	      {
	        home-manager = {
	          useGlobalPkgs = true;
	          useUserPackages = true;
	          extraSpecialArgs = inputs;
	          sharedModules = [ nixvim.homeManagerModules.nixvim ];
	          users.Atom = import ./home-manager/home.nix;
	        };
	      }
      ];
    };
  };
}
