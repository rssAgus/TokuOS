{ config, pkgs, ... }:

{
  # Hostname :)
  networking.hostName = "tokuOS";

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  # TZ.
  time.timeZone = "America/Argentina/Buenos_Aires";
  i18n.defaultLocale = "en_US.UTF-8";

  # WiFi.
  networking.networkmanager.enable = true;
  
  # COSMIC
  services.desktopManager.cosmic.enable = true;
  services.displayManager.cosmic-greeter.enable = true;

  # Hyprland
  programs.hyprland.enable = true;
  
  # Fonts.
  fonts.packages = with pkgs; [
	  nerd-fonts.fira-code
	  nerd-fonts.space-mono
	  nerd-fonts.hurmit
  ];
  
  # Normal User.
  users.users.agustin = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker" ];
    shell = pkgs.bash;
  };

  # User for testing.
  users.users.arusso = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker" ];
    shell = pkgs.bash;
  };

  # Unfree pkgs.
  nixpkgs.config.allowUnfree = true;

  # Flakes & stuff.
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Global pkgs.
  environment.systemPackages = with pkgs; [
    git
    gh
    curl
    zip
    unzip
  ];
  
  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # SYS Version.
  system.stateVersion = "25.05";
  
  
  ### ETC's ###

  # Flatpak enabled.
  services.flatpak.enable = true;

  # Docker.
    virtualisation.docker = {
    enable = true;
  };

  #Virtualization with LibVirt.
  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;

  ### ETC's end ###
}