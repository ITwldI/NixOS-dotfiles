{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    nautilus
    loupe
    papers
    epiphany
    gnome-calendar
    gnome-text-editor
    gnome-calculator
    gnome-characters
  ];
}
