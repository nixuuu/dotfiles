#!/bin/bash

ln -s $PWD/.Xresources ~/.Xresources
mkdir -p ~/.config

configs=(alacritty i3 polybar rofi nitrogen)

for pkg in "${configs[@]}"
do
    ln -s $PWD/.config/$pkg ~/.config/$pkg
done

ln -s $PWD/.config/picom.conf ~/.config/picom.conf
ln -s $PWD/.gitconfig ~/.gitconfig

ln -s $PWD/.mpd ~/.mpd
touch ~/.mpd/mpd.db ~/.mpd/mpd.pid ~/.mpd/mpdstate

mkdir -p ~/Pictures
ln -s $PWD/wallpapers ~/Pictures/wallpapers

mkdir -p ~/.local/share/fonts
ln -s $PWD/fonts ~/.local/share/fonts/nixdots
fc-cache -f -v
