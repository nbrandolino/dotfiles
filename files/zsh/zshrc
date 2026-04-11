# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# zsh theme
ZSH_THEME="gianu"

# plugins
plugins=(git
zsh-autosuggestions
zsh-syntax-highlighting
zsh-history-substring-search
)

# oh my zsh
source $ZSH/oh-my-zsh.sh

# fix cursor
_fix_cursor() {
   echo -ne '\e[5 q'
}
precmd_functions+=(_fix_cursor)

# alias
alias start-ssh-agent="eval '$(ssh-agent -s)' && ssh-add ~/.ssh/id_ed25519"
