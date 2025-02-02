{
  pkgs,
  lib,
  ...
}: let
  inherit (lib) mkOverride;
in {
  nix.distributedBuilds = false;
  nix.settings = {
    substituters = ["https://cache-nix.project2.xyz/uconsole"];
    trusted-substituters = ["https://cache-nix.project2.xyz/uconsole"];
    trusted-public-keys = ["uconsole:vvqOLjqEwTJBUqv1xdndD1YHcdlMc/AnfAz4V9Hdxyk="];
    experimental-features = ["nix-command" "flakes"];
  };
  services.openssh.enable = true;
  boot.supportedFilesystems.zfs = false;

  environment.systemPackages = with pkgs; [
    wirelesstools
    iw
    gitMinimal
  ];

  networking.wireless = {
    userControlled.enable = true;
    enable = true;
  };
  systemd.services.wpa_supplicant.wantedBy = mkOverride 50 [];
  networking.networkmanager.enable = false;

  users.users.oom = {
    isNormalUser = true;
    extraGroups = ["wheel"];
  };
}
