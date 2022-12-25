{ config, pkgs, ... }: {
  imports = [ ./hardware-configuration.nix ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  networking.hostName = "testbox";
  time.timeZone = "Europe/Paris";
  services.openssh.enable = true;
  system.stateVersion = "22.11"; # Did you read the comment?
}

