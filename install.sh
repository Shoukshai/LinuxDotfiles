#!/bin/bash
set -e

# Bootstrap paru if not installed
if ! command -v paru &>/dev/null; then
    echo "Installing paru..."
    sudo pacman -S --needed base-devel git
    git clone https://aur.archlinux.org/paru.git /tmp/paru
    cd /tmp/paru && makepkg -si
    cd -
fi

paru -S --needed \
    \
    `# Terminal / Shell` \
    kitty kitty-shell-integration kitty-terminfo \
    starship \
    neovim \
    bash-completion \
    \
    `# CLI utilities` \
    btop \
    eza \
    fd \
    fzf \
    ripgrep \
    wget \
    unzip zip 7zip \
    man-db man-pages \
    \
    `# Window manager / Display` \
    river-classic \
    wlr-randr \
    wev \
    seatd seatd-dinit \
    gamescope \
    xdg-desktop-portal xdg-desktop-portal-wlr \
    xdg-user-dirs xdg-utils \
    xorg-xwayland \
    \
    `# Theming / Wallpaper` \
    awww-bin \
    wallust-git \
    \
    `# Media` \
    mpv mpv-uosc-git \
    kdenlive \
    shotcut \
    gpu-screen-recorder-git \
    yt-dlp \
    chafa \
    \
    `# Gaming` \
    steam \
    prismlauncher \
    glfw-wayland-minecraft-cursorfix \
    \
    `# Internet / Comms` \
    librewolf \
    vesktop-bin \
    networkmanager networkmanager-dinit \
    \
    `# Security` \
    burpsuite \
    nmap \
    lynis-git \
    wireguard-tools wireguard-dinit \
    nftables nftables-dinit \
    \
    `# GPU (NVIDIA)` \
    nvidia-open-dkms nvidia-utils nvidia-settings \
    lib32-nvidia-utils \
    vulkan-icd-loader lib32-vulkan-icd-loader \
    \
    `# Audio` \
    pipewire-alsa pipewire-pulse \
    pipewire-dinit pipewire-pulse-dinit \
    wireplumber-dinit \
    sndio \
    alsa-utils \
    \
    `# Fonts` \
    noto-fonts noto-fonts-cjk noto-fonts-emoji \
    ttf-jetbrains-mono ttf-dejavu ttf-roboto \
    \
    `# System utilities` \
    git \
    openssh \
    reflector \
    cpupower cpupower-dinit \
    chrony chrony-dinit \
    bluez bluez-dinit \
    smbclient \
    fuse2 \
    btrfs-progs \
    jdk21-openjdk \
    foamshot-bin
