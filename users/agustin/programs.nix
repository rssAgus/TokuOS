{ pkgs, ... }:

{

  # Pkgs.
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
    kitty
  ];

  # Bash
  programs.bash.enable = true;
  
  # Git (solo por si acaso ya configure los ssh keys :'v)
  programs.git.enable = true;

  # Starship
  programs.starship.enable = true;
  
}
