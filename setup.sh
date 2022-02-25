#!/bin/bash

ln -s $PWD/.Xresources ~/.Xresources

configs=(alacritty i3 polybar rofi)

for pkg in "${configs[@]}"
do
    ln -s $PWD/.config/$pkg ~/.config/$pkg
done

ln -s $PWD/.mpd ~/.mpd
touch ~/.mpd/mpd.db ~/.mpd/mpd.pid ~/.mpd/mpdstate

mkdir -p ~/.local/share/fonts
ln -s $PWD/fonts ~/.local/share/fonts/nixdots
fc-cache -f -v
