#!/bin/bash

echo "Installing Packages..."
sudo pacman -S --needed - <packages.txt

echo "Creating Directories..."
mkdir -p ~/.config/kitty/
mkdir -p ~/.config/hypr/
mkdir -p ~/.config/nvim/lua/
mkdir -p ~/.config/waybar/
mkdir -p ~/.config/nvim/lua/config/
mkdir -p ~/.config/nvim/lua/plugins/
mkdir -p ~/.config/btop/
mkdir -p /etc/systemd/system/getty@tty1.service.d/

echo "Creating symlinks..."
ln -sf ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -sf ~/dotfiles/hypr/hyprland.conf ~/.config/hypr/hyprland.conf
ln -sf ~/dotfiles/nvim/init.lua ~/.config/nvim/init.lua
ln -sf ~/dotfiles/nvim/lazyvim.json ~/.config/nvim/lazyvim.json
ln -sf ~/dotfiles/nvim/lua/config/ ~/.config/nvim/lua/config/
ln -sf ~/dotfiles/nvim/lua/plugins/ ~/.config/nvim/lua/plugins/
ln -sf ~/dotfiles/waybar/config ~/.config/waybar/config
ln -sf ~/dotfiles/waybar/style.css ~/.config/waybar/style.css
ln -sf ~/dotfiles/starship.toml ~/.config/starship.toml
ln -sf ~/dotfiles/btop/ ~/.config/btop/
ln -sf ~/dotfiles/.zprofile ~/.zprofile
sudo cp ~/dotfiles/override.conf /etc/systemd/system/getty@tty1.service.d/override.conf
cp /etc/systemd/system/getty@tty1.service.d/override.conf ~/dotfiles/override.conf
