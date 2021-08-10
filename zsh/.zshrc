ZSHCONF=$HOME/.config/zsh

source $ZSHCONF/plugins.zsh

# Key bindings
bindkey -v

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

export EDITOR="nvim"

source $ZSHCONF/path.zsh
source $ZSHCONF/prompt.zsh
source $ZSHCONF/alias.zsh
