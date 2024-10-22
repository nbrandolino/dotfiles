#!/usr/bin/env bash


main () {
    if [ $(id -u) == 0 ]; then
        echo
        echo "Do not run this script as root."
        echo
    else
        installVimrc
    fi
}


installVimrc () {
    SCRIPT_DIR=$(cd $(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd))

    if [ ! -d /home/$USER/.config/ ]; then
        mkdir /home/$USER/.config/
    fi

    if [ ! -d /home/$USER/.config/nvim ]; then
        mkdir /home/$USER/.config/nvim/
    fi

	# user
    echo "Installing Nvim for user..."
    cp -r $(ls $SCRIPT_DIR | grep -v installNvim.sh) /home/$USER/.config/nvim/

    # root
    echo "Installing Nvim for root..."
    sudo cp -r $(ls $SCRIPT_DIR | grep -v installNvim.sh) /root/.config/nvim/
}



main
