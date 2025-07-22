{ pkgs, ... }:

{
  home.packages = with pkgs; [
    htop
    wget
    zsh
    bat
    vscode
    kitty
    wofi
  ];

  programs.git = {
    enable = true;
  };
    

  programs.starship = {
    enable = true;
  };
}
