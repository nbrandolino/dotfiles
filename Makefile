ALACRITTYDEST = ~/.config/alacritty/
BTOPDEST = ~/.config/btop/
NVIMDEST = ~/.config/nvim/
TMUXDEST = ~/.config/tmux/
VIMDEST = ~/.vimrc
VIMDESTROOT = /root/.vimrc
ZSHDEST = ~/.zshrc

all:
	@echo Run \'make install\', \'make alacritty\', \'make btop\', \'make nvim\', \'make tmux\', \'make vim\', or \'make zsh\' to install dotfiles.

install:
	# create destination dirs
	@mkdir -p $(ALACRITTYDEST)
	@mkdir -p $(NVIMDEST)
	@mkdir -p $(TMUXDEST)
	@mkdir -p $(BTOPDEST)

	# copy files
	@cp -p ./files/alacritty/alacrittyDesktop.toml $(ALACRITTYDEST)alacritty.toml
	@cp -p ./files/btop/* $(BTOPDEST)
	@cp -p ./files/nvim/* $(NVIMDEST)
	@cp -p ./files/tmux/* $(TMUXDEST)
	@cp -p ./files/vim/vimrc $(VIMDEST)
	@sudo cp -p ./files/vim/vimrc $(VIMDESTROOT)

	# install ohmyzsh
	@git clone https://github.com/ohmyzsh/ohmyzsh.git ~/Desktop/ohmyzsh
	@bash ~/Desktop/ohmyzsh/tools/install.sh --unattended
	@git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	@git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	@git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
	@cp -p ./files/zsh/zshrc $(ZSHDEST)
	@sudo chsh -s /usr/bin/zsh $USER

laptop:
	# only here because i use different alacritty resolutions on my desktop and laptop lol
	# create destination dirs
	@mkdir -p $(ALACRITTYDEST)
	@mkdir -p $(NVIMDEST)
	@mkdir -p $(TMUXDEST)
	@mkdir -p $(BTOPDEST)

	# copy files
	@cp -p ./files/alacritty/alacrittyLaptop.toml $(ALACRITTYDEST)alacritty.toml
	@cp -p ./files/btop/* $(BTOPDEST)
	@cp -p ./files/nvim/* $(NVIMDEST)
	@cp -p ./files/tmux/* $(TMUXDEST)
	@cp -p ./files/vim/vimrc $(VIMDEST)
	@sudo cp -p ./files/vim/vimrc $(VIMDESTROOT)

	# install ohmyzsh
	@git clone https://github.com/ohmyzsh/ohmyzsh.git ~/Desktop/ohmyzsh
	@bash ~/Desktop/ohmyzsh/tools/install.sh --unattended
	@git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	@git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	@git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
	@cp -p ./files/zsh/zshrc $(ZSHDEST)
	@sudo chsh -s /usr/bin/zsh $USER

alacritty:
	# create destination dirs
	@mkdir -p $(ALACRITTYDEST)

	# copy files
	@cp -p ./files/alacritty/alacrittyDesktop.toml $(ALACRITTYDEST)alacritty.toml

btop:
	# create destination dirs
	@mkdir -p $(BTOPDEST)

	# copy files
	@cp -p ./files/btop/* $(BTOPDEST)

nvim:
	# create destination dirs
	@mkdir -p $(NVIMDEST)

	# copy files
	@cp -p ./files/nvim/* $(NVIMDEST)

tmux:
	# create destination dirs
	@mkdir -p $(TMUXDEST)

	# copy files
	@cp -p ./files/tmux/* $(TMUXDEST)

vim:
	# copy files
	@cp -p ./files/vim/vimrc $(VIMDEST)
	@sudo cp -p ./files/vim/vimrc $(VIMDESTROOT)

zsh:
	# install ohmyzsh
	@git clone https://github.com/ohmyzsh/ohmyzsh.git ~/Desktop/ohmyzsh
	@bash ~/Desktop/ohmyzsh/tools/install.sh --unattended
	@git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	@git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	@git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
	@cp -p ./files/zsh/zshrc $(ZSHDEST)
	@sudo chsh -s /usr/bin/zsh $USER

uninstall:
	@rm -rf $(ALACRITTYDEST)
	@rm -rf $(NVIMDEST)
	@rm -rf $(TMUXDEST)
	@rm -rf $(VIMDEST)
	@rm -rf $(ZSHDEST)
