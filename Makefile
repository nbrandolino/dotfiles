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
	@cp -p ./alacritty/alacrittyDesktop.toml $(ALACRITTYDEST)alacritty.toml
	@cp -p ./btop/* $(BTOPDEST)
	@cp -p ./nvim/* $(NVIMDEST)
	@cp -p ./tmux/* $(TMUXDEST)
	@cp -p ./vim/vimrc $(VIMDEST)
	@sudo cp -p ./vim/vimrc $(VIMDESTROOT)
	@cp -p ./zsh/zshrc $(ZSHDEST)

	# install ohmyzsh
	@git clone https://github.com/ohmyzsh/ohmyzsh.git ~/Desktop/ohmyzsh
	@bash ~/Desktop/ohmyzsh/tools/install.sh --unattended
	@git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	@git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	@git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
	@sudo chsh -s /usr/bin/zsh $USER

laptop:
	# only here because i use different alacritty resolutions on my desktop and laptop lol
	# create destination dirs
	@mkdir -p $(ALACRITTYDEST)
	@mkdir -p $(NVIMDEST)
	@mkdir -p $(TMUXDEST)
	@mkdir -p $(BTOPDEST)

	# copy files
	@cp -p ./alacritty/alacrittyLaptop.toml $(ALACRITTYDEST)alacritty.toml
	@cp -p ./btop/* $(BTOPDEST)
	@cp -p ./nvim/* $(NVIMDEST)
	@cp -p ./tmux/* $(TMUXDEST)
	@cp -p ./vim/vimrc $(VIMDEST)
	@sudo cp -p ./vim/vimrc $(VIMDESTROOT)
	@cp -p ./zsh/zshrc $(ZSHDEST)

	# install ohmyzsh
	@git clone https://github.com/ohmyzsh/ohmyzsh.git ~/Desktop/ohmyzsh
	@bash ~/Desktop/ohmyzsh/tools/install.sh --unattended
	@git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	@git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	@git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
	@sudo chsh -s /usr/bin/zsh $USER

alacritty:
	# create destination dirs
	@mkdir -p $(ALACRITTYDEST)

	# copy files
	@cp -p ./alacritty/alacrittyDesktop.toml $(ALACRITTYDEST)alacritty.toml

btop:
	# create destination dirs
	@mkdir -p $(BTOPDEST)

	# copy files
	@cp -p ./btop/* $(BTOPDEST)

nvim:
	# create destination dirs
	@mkdir -p $(NVIMDEST)

	# copy files
	@cp -p ./nvim/* $(NVIMDEST)

tmux:
	# create destination dirs
	@mkdir -p $(TMUXDEST)

	# copy files
	@cp -p ./tmux/* $(TMUXDEST)

vim:
	# copy files
	@cp -p ./vim/vimrc $(VIMDEST)
	@sudo cp -p ./vim/vimrc $(VIMDESTROOT)

zsh:
	# copy files
	@cp -p ./zsh/zshrc $(ZSHDEST)

	# install ohmyzsh
	@git clone https://github.com/ohmyzsh/ohmyzsh.git ~/Desktop/ohmyzsh
	@bash ~/Desktop/ohmyzsh/tools/install.sh --unattended
	@git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	@git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	@git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
	@sudo chsh -s /usr/bin/zsh $USER

uninstall:
	@rm -rf $(ALACRITTYDEST)
	@rm -rf $(NVIMDEST)
	@rm -rf $(TMUXDEST)
	@rm -rf $(VIMDEST)
	@rm -rf $(ZSHDEST)
