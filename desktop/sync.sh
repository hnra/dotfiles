#!/bin/bash
# Dependencies:
# scrot, pacman
# imgur.sh (https://raw.githubusercontent.com/tremby/imgur.sh/master/imgur.sh)
DOT_CONF_FILES=( "sxhkd/sxhkdrc" "bspwm/bspwmrc" "compton.conf" "Code/User/settings.json" "nvim/init.vim" "rofi/config" "polybar/config" )
HOME_FILES=( ".Xresources" ".zshrc" ".xinitrc" )
HOME="/home/henan/"

if [ ! -d "./.config" ]; then
  echo ".config folder does not exist. creating it"
  mkdir .config
fi

for file_path in "${DOT_CONF_FILES[@]}"; do
  echo "Copying $file_path to .config"
  DIRNAME=$(dirname $file_path | sed 's/.*\///')

  if ! [ -d "./config/$DIRNAME" ] && ! [ "$DIRNAME" == "." ]; then
    echo "Making $DIRNAME"
    mkdir ".config/$DIRNAME"
  fi
  cp "$HOME.config/$file_path" ".config/$file_path"
done

for file in "${HOME_FILES[@]}"; do
  echo "Copying $file to this folder"
  cp "$HOME$file" "./$file"
done

echo "Saving installed pacman packages"
pacman -Qe > packages

echo "Making screenshot in 5 seconds"
IMG_URL=$(scrot -d 5 -e 'imgur $f' | head -n1)
echo "Put this URL in README:"
echo $IMG_URL
notify-send "Sync Done!"

