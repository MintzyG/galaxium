{ pkgs, ... }:

{
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };

  networking = {
    hostName = "galaxium";
    networkmanager.enable = true;
  };

  environment.systemPackages = with pkgs; [
    brightnessctl
    home-manager
    nix-index
  ];

  system.stateVersion = "23.11";
}
