{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    spaceship-prompt
    eza
  ];
}
