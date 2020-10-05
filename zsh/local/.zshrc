OLD_PATH=$PATH

export ZSHCONF="$HOME/Documents/proj/dots/zsh/local"

source $ZSHCONF/antigen.zsh
source $ZSHCONF/abbr_pwd

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

# Set prompt
SUCCESS='%F{197}(ﾉ◕%F{198}ヮ◕)%F{199}ﾉ*:・ﾟ✧ %f'
FAIL='%F{27}%F{33}(╯°%F{39}□°%) %F{45}╯︵ ┻━┻%f'
PROMPT="%(?;$SUCCESS;$FAIL) "
PS2='%(?;%F{206}(>ᐢ·ᐢ)>;%F{117}ʕ ·ᴥ·ʔ)%f '

RSUCCESS='%F{198}'
RFAIL='%F{45}'
RPROMPT="%(?;$RSUCCESS;$RFAIL)\$(felix_pwd_abbr)%f"

# (ﾉ◕ヮ◕)ﾉ*:・ﾟ✧
# ʕ •ᴥ•ʔ
# (>^.^)>
# (╯°□°）╯︵ ┻━┻

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export EDITOR="nvim"

export PATH=$PATH:$HOME/.local/bin:$HOME/Library/Python/3.8/bin
