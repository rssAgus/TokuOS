{ config, pkgs, ... }:

{
  networking.hostName = "TokuOS";

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  time.timeZone = "America/Argentina/Buenos_Aires";
  i18n.defaultLocale = "es_AR.UTF-8";

  networking.networkmanager.enable = true;

  users.users.agustin = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker" ];
    shell = pkgs.bash;
  };

  nixpkgs.config.allowUnfree = true;

  users.users.arusso = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker" ];
    shell = pkgs.bash;
  };

  services.xserver.enable = true;
  services.desktopManager.plasma6.enable = true;
  services.displayManager.sddm.enable = true;
  services.xserver.displayManager.sddm.wayland.enable = true;

  environment.systemPackages = with pkgs; [
    git
    gh
    curl
    zip
    unzip
  ];

  system.stateVersion = "25.05";
}