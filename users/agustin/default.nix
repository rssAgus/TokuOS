{ config, pkgs, ... }:

{
  home.username = "agustin";
  home.homeDirectory = "/home/agustin";
  programs.home-manager.enable = true;

  imports = [
    ./programs.nix
  ];

  home.stateVersion = "25.11";
}
