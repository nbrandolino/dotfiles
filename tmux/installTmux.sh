#!/usr/bin/env bash


main () {
	SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

	if [ ! -d /home/$USER/.config/ ]; then
        mkdir /home/$USER/.config/
    fi

    if [ ! -d /home/$USER/.config/tmux ]; then
        mkdir /home/$USER/.config/tmux/
    fi

	cp -r $(ls $SCRIPT_DIR | grep -v installTmux.sh) /home/$USER/.config/tmux/
}

main
