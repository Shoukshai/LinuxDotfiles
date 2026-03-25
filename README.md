# Shouk's Linux Dotfiles

Personal rice running on Artix Linux (dinit) with the River window manager.
Made for myself so it's not guarantees to works for other setups.

## Structure

```
~/.bashrc                        -> .bashrc
~/.bash_profile                  -> .bash_profile
~/.bash_logout                   -> .bash_logout
~/.config/starship.toml          -> starship.toml
~/.config/river/init             -> river/init
~/.config/kitty/kitty.conf       -> kitty/kitty.conf
~/.config/fastfetch/config.jsonc -> fastfetch/config.jsonc
~/.config/btop/btop.conf         -> btop/btop.conf
~/.config/mpv/mpv.conf           -> mpv/mpv.conf
~/.config/awww/                  -> awww/
~/.config/wallust/wallust.toml   -> wallust/wallust.toml
```

## Stack

| Role           | Tool                                                                  |
|----------------|-----------------------------------------------------------------------|
| Window Manager | [River](https://codeberg.org/river/river)                             |
| Terminal       | [Kitty](https://sw.kovidgoyal.net/kitty/)                             |
| Shell Prompt   | [Starship](https://starship.rs)                                       |
| Fetch          | [Fastfetch](https://github.com/fastfetch-cli/fastfetch)               |
| Wallpaper      | [awww](https://github.com/heapbytes/awww)                             |
| Theming        | [Wallust](https://codeberg.org/explosion-mental/wallust)              |
| System Monitor | [btop](https://github.com/aristocratos/btop)                          |
| Video Player   | [mpv](https://mpv.io)                                                 |
| Browser        | Librewolf                                                             |
| Init System    | Dinit                                                                 |
| Audio          | Pipewire + Wireplumber                                                |

## Wallpaper cycling

Wallpapers are cycled with `Super+W` via `awww_cycle.sh`, which also runs wallust to regenerate the color scheme.
Place wallpapers in `~/.config/Wallpapers/` named `screen*.png/jpg`.

## Install

No install script yet - link or copy each file to its target path manually.

```bash
cp .bashrc ~/.bashrc
cp .bash_profile ~/.bash_profile
cp starship.toml ~/.config/starship.toml
cp river/init ~/.config/river/init
cp kitty/kitty.conf ~/.config/kitty/kitty.conf
cp fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc
cp btop/btop.conf ~/.config/btop/btop.conf
cp mpv/mpv.conf ~/.config/mpv/mpv.conf
cp -r awww/ ~/.config/awww/
cp wallust/wallust.toml ~/.config/wallust/wallust.toml
```

> [!Note]
> This setup is tailored to my hardware (2560x1600 @ 240Hz, NVIDIA + AMD iGPU)
