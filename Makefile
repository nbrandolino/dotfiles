ALACRITTYDEST = ~/.config/alacritty/
NVIMDEST = ~/.config/nvim/
TMUXDEST = ~/.config/tmux/
VIMDEST = ~/.vimrc
ZSHDEST = ~/.zshrc

all:
	@echo Run \'make desktop\' or \'make laptop\' to install dotfiles.

desktop:
	# create destination dirs
	@mkdir -p $(ALACRITTYDEST)
	@mkdir -p $(NVIMDEST)
	@mkdir -p $(TMUXDEST)

	# copy files
	@cp -p ./alacritty/alacrittyDesktop.toml $(ALACRITTYDEST)alacritty.toml
	@cp -p ./nvim/* $(NVIMDEST)
	@cp -p ./tmux/* $(TMUXDEST)
	@cp -p ./vim/vimrc $(VIMDEST)
	@cp -p ./zsh/zshrc $(ZSHDEST)

	# install ohmyzsh
	@git clone https://github.com/ohmyzsh/ohmyzsh.git ~/Desktop/ohmyzsh
	@bash ~/Desktop/ohmyzsh/tools/install.sh --unattended
	@git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	@git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	@git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
	@sudo chsh -s /usr/bin/zsh $USER

laptop:
	# create destination dirs
	@mkdir -p $(ALACRITTYDEST)
	@mkdir -p $(NVIMDEST)
	@mkdir -p $(TMUXDEST)

	# copy files
	@cp -p ./alacritty/alacrittyLaptop.toml $(ALACRITTYDEST)alacritty.toml
	@cp -p ./nvim/* $(NVIMDEST)
	@cp -p ./tmux/* $(TMUXDEST)
	@cp -p ./vim/vimrc $(VIMDEST)
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
