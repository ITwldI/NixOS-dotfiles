{ config, pkgs, ... }:

{
  imports = [
     ./shell/zsh.nix
     ./shell/pkgs.nix
     ./system/bootloader.nix
     ./system/gc.nix
     ./system/services.nix
     ./pkgs/packages.nix
     ./environment/gnome.nix
     ./environment/extensions.nix
     ./environment/pkgs.nix
     ./users/samuel.nix
  ];
}
