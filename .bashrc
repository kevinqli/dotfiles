if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi 
if [ -f ~/.descorc ]; then . ~/.descorc; fi 
git config --global remote.origin.tagopt --no-tags
git config --global push.default upstream
. ~/z.sh 
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export TERM=xterm-256color
