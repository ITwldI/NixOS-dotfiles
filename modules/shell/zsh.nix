{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;

  shellAliases = {
    ls = "eza --icons";
  };
  
  promptInit = ''
      source ${pkgs.spaceship-prompt}/share/zsh/site-functions/prompt_spaceship_setup
      autoload -U promptinit; promptinit
      prompt spaceship
    '';
  };
}

