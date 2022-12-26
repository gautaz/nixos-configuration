{ config, pkgs, ... }: {
  imports = [
    ../_/hw/qemu.nix
    ../_/storage.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  networking.hostName = "kusanagi";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  time.timeZone = "Europe/Paris";
  system.stateVersion = "22.11";
}
