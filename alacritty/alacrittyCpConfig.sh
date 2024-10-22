#!/usr/bin/env bash


main () {
    SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

    if [ ! -d /home/$USER/.config/ ]; then
        mkdir /home/$USER/.config/
    fi

    if [ ! -d /home/$USER/.config/alacritty ]; then
        mkdir /home/$USER/.config/alacritty
    fi


    read -p "Desktop (D) or Laptop (L): " choice
    if [ $choice == "D" ]; then
        cp $SCRIPT_DIR/alacrittyDesktop.toml /home/$USER/.config/alacritty/alacritty.toml
    elif [ $choice == "L" ]; then
        cp $SCRIPT_DIR/alacrittyLaptop.toml /home/$USER/.config/alacritty/alacritty.toml
    else
        echo "Error: Invalid input."
    fi
}

main
