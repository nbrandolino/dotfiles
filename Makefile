ALACRITTYDEST = ~/.config/alacritty/
BTOPDEST = ~/.config/btop/
NVIMDEST = ~/.config/nvim/
TMUXDEST = ~/.config/tmux/
VIMDEST = ~/.vimrc
VIMDESTROOT = /root/.vimrc
ZSHDEST = ~/.zshrc
ZSHTHEMEDEST = ~/.oh-my-zsh/themes/

all:
	@echo Run \'make install\', \'make alacritty\', \'make btop\', \'make nvim\', \'make tmux\', \'make vim\', or \'make zsh\' to install dotfiles.

install:
	# create destination dirs
	@mkdir -p $(ALACRITTYDEST)
	@mkdir -p $(NVIMDEST)
	@mkdir -p $(TMUXDEST)
	@mkdir -p $(BTOPDEST)

	# copy files
	@cp -pr ./files/alacritty/alacritty.toml $(ALACRITTYDEST)alacritty.toml
	@cp -pr ./files/btop/* $(BTOPDEST)
	@cp -pr ./files/nvim/* $(NVIMDEST)
	@cp -pr ./files/tmux/* $(TMUXDEST)
	@cp -pr ./files/vim/vimrc $(VIMDEST)
	@sudo cp -pr ./files/vim/vimrc $(VIMDESTROOT)

	# install ohmyzsh
	@git clone https://github.com/ohmyzsh/ohmyzsh.git ~/Desktop/ohmyzsh
	@bash ~/Desktop/ohmyzsh/tools/install.sh --unattended
	@git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	@git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	@git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
	@cp -pr ./files/zsh/zshrc $(ZSHDEST)
	@cp -pr ./files/zsh/themes/* $(ZSHTHEMEDEST)
	@sudo chsh -s /usr/bin/zsh $USER
alacritty:
	# create destination dirs
	@mkdir -p $(ALACRITTYDEST)

	# copy files
	@cp -pr ./files/alacritty/alacritty.toml $(ALACRITTYDEST)alacritty.toml

btop:
	# create destination dirs
	@mkdir -p $(BTOPDEST)

	# copy files
	@cp -pr ./files/btop/* $(BTOPDEST)

nvim:
	# create destination dirs
	@mkdir -p $(NVIMDEST)

	# copy files
	@cp -pr ./files/nvim/* $(NVIMDEST)

tmux:
	# create destination dirs
	@mkdir -p $(TMUXDEST)

	# copy files
	@cp -pr ./files/tmux/* $(TMUXDEST)

vim:
	# copy files
	@cp -pr ./files/vim/vimrc $(VIMDEST)
	@sudo cp -pr ./files/vim/vimrc $(VIMDESTROOT)

zsh:
	# install ohmyzsh
	@git clone https://github.com/ohmyzsh/ohmyzsh.git ~/Desktop/ohmyzsh
	@bash ~/Desktop/ohmyzsh/tools/install.sh --unattended
	@git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	@git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	@git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
	@cp -pr ./files/zsh/zshrc $(ZSHDEST)
	@cp -pr ./files/zsh/themes/* $(ZSHTHEMEDEST)
	@sudo chsh -s /usr/bin/zsh $USER

uninstall:
	@rm -rf $(ALACRITTYDEST)
	@rm -rf $(NVIMDEST)
	@rm -rf $(TMUXDEST)
	@rm -rf $(VIMDEST)
	@rm -rf $(ZSHDEST)
