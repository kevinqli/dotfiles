if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi 
if [ -f ~/.descorc ]; then . ~/.descorc; fi 
set -o vi
. ~/z.sh 
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export TERM=xterm-256color
shopt -s histappend
