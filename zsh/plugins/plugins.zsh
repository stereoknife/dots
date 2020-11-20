OLD_PATH=$PATH

source $ZSHCONF/plugins/antigen.zsh
source $ZSHCONF/plugins/abbr_pwd

# Load oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Add fish-like path abbreviation
antigen bundle felixgravila/zsh-abbr-path

# Show command completion suggestions
antigen bundle zsh-users/zsh-autosuggestions

# Tell Antigen that you're done.
antigen apply

# Restore path

PATH=$OLD_PATH

# Key bindings
bindkey -v

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

export EDITOR="nvim"
