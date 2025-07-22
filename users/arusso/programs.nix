{ pkgs, ... }:

{
  home.packages = with pkgs; [
    htop
    wget
    zsh
    bat
    vscode
  ];

  programs.git = {
    enable = true;
    userName = "rssAgus";
    userEmail = "arusso@fixear.net";
  };

  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      format = "$directory $git_branch $character";
    };
  };
}
