{ config, pkgs, ... }:

{
  home.username = "agustin";
  home.homeDirectory = "/home/agustin";
  programs.home-manager.enable = true;

  services.desktopManager.cosmic.enable = true;
  services.displayManager.cosmic-greeter.enable = true;

  imports = [
    ./programs.nix
  ];

  home.stateVersion = "25.11";
}
