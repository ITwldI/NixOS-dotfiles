{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
     ghostty
     neofetch
     git
     helix
     discord
  ];
}
