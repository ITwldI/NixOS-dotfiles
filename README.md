# ❄️ NixOS-dotfiles [![built with nix](https://img.shields.io/static/v1?logo=nixos&logoColor=white&label=&message=Built%20with%20Nix&color=41439a)](https://builtwithnix.org)
*Esta es mi configuración personal de NixOS la cual incluye configuraciones `zsh`, `garbage-collector`, `bootloader`, `gnome`, etc...
algo muy simple y hasta estúpido que espero que a más de uno siquiera le resulte útil o le sirva como referencia para hacer una configuración más decente para su sistema*
## 📋 Estructura del sistema
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
### `pkgs`
En esta carpeta se encuentra la lista de mis paquetes instalados, nada destacable
### `shell`
Aquí tengo mi configuración de `Zsh` que usa `spaceship` como prompt y `eza` como sustitución a `ls`
### `system`
Dentro de esta carpeta se encuentra mi configuración de bootloader que incluye un tema plymouth básico, arranque automático y una pequeña configuración `garbage-collector` que hace que mantiene algo limpio mi sistema
```
{ config, pkgs, ... }:

{
  nix.gc = {
    automatic = true;
    dates = "daily";
    options = "--delete-older-than 5d";
  };

  nix.settings.auto-optimise-store = true;

}
```
### `users`
Aquí solo está mi configuración de usuario que es la misma autogenerada al instalar el sistema, así que no es importante
