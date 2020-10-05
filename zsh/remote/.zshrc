bindkey -v

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

PROMPT='%F{39}[%m][%~] %f%# '
export PATH=$PATH:$HOME/.local/bin