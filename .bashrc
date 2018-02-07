if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi 
if [ -f ~/.descorc ]; then . ~/.descorc; fi 
set -o vi
. ~/z.sh 
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export TERM=xterm-256color
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
bindkey -v
bindkey '^R' history-incremental-search-backward
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export ANDROID_HOME=/usr/local/share/android-sdk
