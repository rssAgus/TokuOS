{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bash
    vscode
    git
    gh	
    spotify
    nodejs		
    openvpn
    openfortivpn
    unzip
    zip
    nuclei
    zap
    gobuster
    go
    fastfetch
    pkgs.starship	
    arp-scan	
    nmap
    python3
    john
    theharvester
    dnsutils
    python313Packages.pip
    pipx
    tree
    qemu
    google-chrome
    discord
    cmatrix
    btop
  ];

  programs.bash.enable = true;
  
  programs.git.enable = true;

  services.desktopManager.cosmic.enable = true;
  services.displayManager.cosmic-greeter.enable = true;

  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
    };
  };
}
