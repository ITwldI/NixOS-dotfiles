{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./machine.nix
      ./modules/default.nix
    ];
}
