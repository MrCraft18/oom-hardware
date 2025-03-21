{
    description = "oom-hardware";

    inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    inputs.nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    outputs = { nixpkgs, nixos-hardware, ... } @inputs: 
    let
        system = "aarch64-linux";
        pkgs = import nixpkgs {inherit system;};
        lib = pkgs.lib
    in {
        nixosModules = {
            uconsole = import ./uconsole { inherit pkgs inputs lib; };
            deskpi = import ./deskpi { inherit pkgs inputs lib; };
            cm4 = import ./cm4;
        };
    };
}
