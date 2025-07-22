{ config, pkgs, ... }:

{
  home.username = "agustin";
  home.homeDirectory = "/home/agustin";
  programs.home-manager.enable = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  imports = [
    ./programs.nix
  ];

  home.stateVersion = "25.11";
}
