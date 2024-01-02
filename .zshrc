# Set default editor
export VISUAL=vim
export EDITOR="$VISUAL"

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'


source $HOME/antigen.zsh

# Load the oh-my-zsh's library.
# antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle sudo
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search

# Load the theme.
antigen theme sbugzu/gruvbox-zsh 

# Tell Antigen that you're done.
antigen apply

eval "$(starship init zsh)"
SPACESHIP_NODE_SHOW=false
