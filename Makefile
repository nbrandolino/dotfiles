ALACRITTY_DEST = ~/.config/alacritty/
BTOP_DEST = ~/.config/btop/
NVIM_DEST = ~/.config/nvim/
TMUX_DEST = ~/.config/tmux/
VIM_DEST = ~/.vimrc
VIM_DEST_ROOT = /root/.vimrc
ZSH_DEST = ~/.zshrc
ZSH_THEME_DEST = ~/.oh-my-zsh/themes/

.PHONY: all install alacritty btop nvim tmux vim zsh uninstall

all:
	@echo Run \'make install\', \'make alacritty\', \'make btop\', \'make nvim\', \'make tmux\', \'make vim\', or \'make zsh\' to install dotfiles.

install:
	@# create destination dirs
	@mkdir -p $(ALACRITTY_DEST)
	@mkdir -p $(NVIM_DEST)
	@mkdir -p $(TMUX_DEST)
	@mkdir -p $(BTOP_DEST)

	@# copy files
	@cp -pr ./files/alacritty/alacritty.toml $(ALACRITTY_DEST)alacritty.toml
	@cp -pr ./files/btop/* $(BTOP_DEST)
	@cp -pr ./files/nvim/* $(NVIM_DEST)
	@cp -pr ./files/tmux/* $(TMUX_DEST)
	@cp -pr ./files/vim/vimrc $(VIM_DEST)
	@sudo cp -pr ./files/vim/vimrc $(VIM_DEST_ROOT)

	@# install ohmyzsh
	@git clone https://github.com/ohmyzsh/ohmyzsh.git ~/Desktop/ohmyzsh
	@bash ~/Desktop/ohmyzsh/tools/install.sh --unattended
	@git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	@git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	@git clone https://github.com/zsh-users/zsh-history-substring-search ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search
	@cp -pr ./files/zsh/zshrc $(ZSH_DEST)
	@cp -pr ./files/zsh/themes/* $(ZSH_THEME_DEST)
	@sudo chsh -s /usr/bin/zsh $(shell whoami)

alacritty:
	@# create destination dirs
	@mkdir -p $(ALACRITTY_DEST)

	@# copy files
	@cp -pr ./files/alacritty/alacritty.toml $(ALACRITTY_DEST)alacritty.toml

btop:
	@# create destination dirs
	@mkdir -p $(BTOP_DEST)

	@# copy files
	@cp -pr ./files/btop/* $(BTOP_DEST)

nvim:
	@# create destination dirs
	@mkdir -p $(NVIM_DEST)

	@# copy files
	@cp -pr ./files/nvim/* $(NVIM_DEST)

tmux:
	@# create destination dirs
	@mkdir -p $(TMUX_DEST)

	@# copy files
	@cp -pr ./files/tmux/* $(TMUX_DEST)

vim:
	@# copy files
	@cp -pr ./files/vim/vimrc $(VIM_DEST)
	@sudo cp -pr ./files/vim/vimrc $(VIM_DEST_ROOT)

zsh:
	@# install ohmyzsh
	@git clone https://github.com/ohmyzsh/ohmyzsh.git ~/Desktop/ohmyzsh
	@bash ~/Desktop/ohmyzsh/tools/install.sh --unattended
	@git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	@git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	@git clone https://github.com/zsh-users/zsh-history-substring-search ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search
	@cp -pr ./files/zsh/zshrc $(ZSH_DEST)
	@cp -pr ./files/zsh/themes/* $(ZSH_THEME_DEST)
	@sudo chsh -s /usr/bin/zsh $(shell whoami)

uninstall:
	@rm -rf $(ALACRITTY_DEST)
	@rm -rf $(NVIM_DEST)
	@rm -rf $(TMUX_DEST)
	@rm -rf $(VIM_DEST)
	@rm -rf $(ZSH_DEST)
