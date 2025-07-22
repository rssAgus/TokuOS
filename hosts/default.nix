{ config, pkgs, ... }:

{
  networking.hostName = "TokuOS";

  time.timeZone = "America/Argentina/Buenos_Aires";
  i18n.defaultLocale = "es_AR.UTF-8";

  networking.networkmanager.enable = true;

  users.users.agustin = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker" ];
    shell = pkgs.bash;
  };

  users.users.arusso = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker" ];
    shell = pkgs.zsh;
  };

  services.xserver.enable = true;
  services.xserver.desktopManager.plasma5.enable = true;
  services.xserver.displayManager.sddm.enable = true;

  environment.systemPackages = with pkgs; [
    git
    gh
    tar
    untar
    curl
    zip
    unzip
  ];

  system.stateVersion = "25.05";
}