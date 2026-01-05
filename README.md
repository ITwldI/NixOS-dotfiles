# ❄️ NixOS-dotfiles [![built with nix](https://img.shields.io/static/v1?logo=nixos&logoColor=white&label=&message=Built%20with%20Nix&color=41439a)](https://builtwithnix.org)
*Esta es mi configuración personal de NixOS la cual incluye configuraciones `zsh`, `garbage-collector`, `bootloader`, `gnome`, etc...
algo muy simple y hasta estúpido que espero que a más de uno siquiera le resulte útil o le sirva como referencia para hacer una configuración más decente para su sistema*
## 📋 Estructura del proyecto
```
.
├── config
├── default.nix
├── environment
│   ├── extensions.nix
│   ├── gnome.nix
│   └── pkgs.nix
├── pkgs
│   └── packages.nix
├── shell
│   ├── pkgs.nix
│   └── zsh.nix
├── system
│   ├── bootloader.nix
│   ├── gc.nix
│   └── services.nix
└── users
    └── samuel.nix
```
## 📂 Carpetas
### `environment`
Aquí se encuentra mi configuración de escritorio (GNOME) que no tiene nada destacable más allá de que elimina la mayoría de software pre-instalado
```
{ pkgs, ... }:
{
services.gnome.core-apps.enable = false;
}
```
