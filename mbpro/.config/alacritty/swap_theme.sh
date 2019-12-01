#!/usr/bin/bash

LIGHT_PATH="/home/henan/.config/alacritty/light"

if [ -e $LIGHT_PATH ]; then
    sed -i 's/*light/*dark/g' /home/henan/.config/alacritty/alacritty.yml
    rm -f $LIGHT_PATH
else
    sed -i 's/*dark/*light/g' /home/henan/.config/alacritty/alacritty.yml
    touch $LIGHT_PATH
fi

