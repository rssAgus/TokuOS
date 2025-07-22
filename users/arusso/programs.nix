{ pkgs, ... }:

{
  home.packages = with pkgs; [
    htop
    wget
    zsh
    bat
    vscode
    kitty
  ];

  programs.git = {
    enable = true;
  };
    

  programs.starship = {
    enable = true;
  };
}
