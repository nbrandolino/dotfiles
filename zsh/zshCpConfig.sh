#!/usr/bin/env bash


main () {
	SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

	git clone https://github.com/ohmyzsh/ohmyzsh.git /home/$USER/Software/GitHub/ohmyzsh
	bash /home/$USER/Software/GitHub/ohmyzsh/tools/install.sh --unattended
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
	sudo chsh -s /usr/bin/zsh $USER
	cp $SCRIPT_DIR/zshrc /home/$USER/.zshrc
}

main
