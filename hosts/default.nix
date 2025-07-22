{ config, pkgs, ... }:

{
  networking.hostName = "TokuOS";

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  time.timeZone = "America/Argentina/Buenos_Aires";
  i18n.defaultLocale = "es_AR.UTF-8";

  services.desktopManager.cosmic.enable = true;
  services.displayManager.cosmic-greeter.enable = true;

  networking.networkmanager.enable = true;

  users.users.agustin = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker" ];
    shell = pkgs.bash;
  };

  nixpkgs.config.allowUnfree = true;

  programs.hyprland.enable = true;

  users.users.arusso = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker" ];
    shell = pkgs.bash;
  };

  environment.systemPackages = with pkgs; [
    git
    gh
    curl
    zip
    unzip
  ];

  system.stateVersion = "25.05";
}