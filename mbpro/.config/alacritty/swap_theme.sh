#!/usr/bin/bash

LIGHT_PATH="/home/henan/.config/alacritty/light"

if [ -e $LIGHT_PATH ]; then
    sed -i '75,99s/#//g' /home/henan/.config/alacritty/alacritty.yml
    sed -i '49,73s/^/#/g' /home/henan/.config/alacritty/alacritty.yml
    rm -f $LIGHT_PATH
else
    sed -i '75,99s/^/#/g' /home/henan/.config/alacritty/alacritty.yml
    sed -i '49,73s/#//g' /home/henan/.config/alacritty/alacritty.yml
    touch $LIGHT_PATH
fi

