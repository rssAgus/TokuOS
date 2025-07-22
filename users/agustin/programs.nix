{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bash
    neofetch
    starship
    helix
  ];

  programs.bash.enable = true;
  programs.git.enable = true;

  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
    };
  };
}
