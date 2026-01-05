{ config, pkgs, ... }:

{

  # Disable CUPS to print documents.
  services.printing.enable = false;

  # Disable firefox.
  programs.firefox.enable = false;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Enable nix-command & flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

}
