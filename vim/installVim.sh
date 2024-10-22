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

	# user
    echo "Installing .vimrc for user..."
    cp -r $(ls $SCRIPT_DIR | grep -v installVim.sh) /home/$USER/.vimrc

    # root
    echo "Installing .vimrc for root..."
    sudo cp -r $(ls $SCRIPT_DIR | grep -v installVim.sh) /root/.vimrc
}



main
