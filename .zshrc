# ~/.zshrc
export ZSH="$HOME/.zsh-setup/plugins"
export PATH="$HOME/.local/zsh/bin:$PATH"

setopt no_nomatch
autoload -Uz promptinit && promptinit
prompt adam1

#alias hfs='hadoop fs'
#alias ll='ls -lah'

source $ZSH/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

