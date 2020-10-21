{
  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-20.09;
    tinybeachthor = {
      url = github:tinybeachthor/nur-packages/master;
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { self, nixpkgs, tinybeachthor }: {
    defaultPackage.x86_64-linux = import ./default.nix {
      pkgs = nixpkgs;
      inherit tinybeachthor;
    };
  };
}
