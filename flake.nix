{
  description = "n3ups NixOS config";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { nixpkgs, ... }: {
    nixosConfigurations.mybox = nixpkgs.lib.nixosSystem {
      modules = [ ./configuration.nix ];
    };
  };
}
