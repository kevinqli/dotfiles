if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi 
if [ -f ~/.quorarc ]; then . ~/.quorarc; fi 
git config --global remote.origin.tagopt --no-tags
git config --global push.default upstream
. ~/z.sh 
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export TERM=xterm-256color
