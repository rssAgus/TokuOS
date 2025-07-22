{ config, pkgs, ... }:

{
  networking.hostName = "TokuOS";

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  time.timeZone = "America/Argentina/Buenos_Aires";
  i18n.defaultLocale = "es_AR.UTF-8";

  services.desktopManager.cosmic.enable = true;
  services.displayManager.cosmic-greeter.enable = true;

  networking.networkmanager.enable = true;

  users.users.agustin = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker" ];
    shell = pkgs.bash;
  };

  fonts.packages = with pkgs; [
	  nerd-fonts.fira-code
	  nerd-fonts.space-mono
	  nerd-fonts.hurmit
  ];

  # Unfree pkgs
  nixpkgs.config.allowUnfree = true;

  # Flakes & stuff
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  programs.hyprland.enable = true;

  users.users.arusso = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker" ];
    shell = pkgs.bash;
  };

  environment.systemPackages = with pkgs; [
    git
    gh
    curl
    zip
    unzip
  ];

  # Flatpak enabled
  services.flatpak.enable = true;

  # Docker
    virtualisation.docker = {
    enable = true;
  };

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  #Virtualization with LibVirt
  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;

  system.stateVersion = "25.05";
}