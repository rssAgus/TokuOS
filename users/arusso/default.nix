{ config, pkgs, ... }:

{
  home.username = "arusso";
  home.homeDirectory = "/home/arusso";

  programs.home-manager.enable = true;

  imports = [
    ./programs.nix
  ];

  home.stateVersion = "25.11";
}
