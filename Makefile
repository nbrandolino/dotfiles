ALACRITTY_SRC = ./files/alacritty/alacritty.toml
ALACRITTY_DEST = ~/.config/alacritty/
BTOP_SRC = ./files/btop/btop.conf
BTOP_DEST = ~/.config/btop/
NVIM_SRC = ./files/nvim/*
NVIM_DEST = ~/.config/nvim/
TMUX_SRC = ./files/tmux/*
TMUX_DEST = ~/.config/tmux/
VIM_SRC = ./files/vim/vimrc
VIM_DEST = ~/.vimrc
VIM_DEST_ROOT = /root/.vimrc
ZSH_SRC = ./files/zsh/zshrc
ZSH_DEST = ~/.zshrc
ZSH_THEME_SRC = ./files/zsh/themes/*
ZSH_THEME_DEST = ~/.oh-my-zsh/themes/

.PHONY: all install alacritty btop nvim tmux vim zsh

all:
	@echo Run 'make install', 'make alacritty', 'make btop', 'make nvim', 'make tmux', 'make vim', or 'make zsh' to install dotfiles.

install: alacritty btop nvim tmux vim zsh

alacritty:
	@mkdir -p $(ALACRITTY_DEST)
	@cp -pr $(ALACRITTY_SRC) $(ALACRITTY_DEST)

btop:
	@mkdir -p $(BTOP_DEST)
	@cp -pr $(BTOP_SRC) $(BTOP_DEST)

nvim:
	@mkdir -p $(NVIM_DEST)
	@cp -pr $(NVIM_SRC) $(NVIM_DEST)

tmux:
	@mkdir -p $(TMUX_DEST)
	@cp -pr $(TMUX_SRC) $(TMUX_DEST)

vim:
	@cp -pr $(VIM_SRC) $(VIM_DEST)
	@sudo cp -pr $(VIM_SRC) $(VIM_DEST_ROOT)

zsh:
	@git clone https://github.com/ohmyzsh/ohmyzsh.git /tmp/ohmyzsh
	@bash /tmp/ohmyzsh/tools/install.sh --unattended
	@rm -rf /tmp/ohmyzsh
	@git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	@git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	@git clone https://github.com/zsh-users/zsh-history-substring-search ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search
	@cp -pr $(ZSH_SRC) $(ZSH_DEST)
	@cp -pr $(ZSH_THEME_SRC) $(ZSH_THEME_DEST)
	@sudo chsh -s $(shell which zsh) $(shell whoami)
