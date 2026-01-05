{ pkgs, ... }:

{
  # Disable GNOME pre-installed software
  services.gnome.core-apps.enable = false;

  environment.gnome.excludePackages = with pkgs; [
    gnome-tour
  ];

  # Disable NixOS manual
  documentation.enable = false;

  # Enable the X11 windowing system.
  services.xserver.enable = false;

  # Enable the GNOME Desktop Environment.
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

}
