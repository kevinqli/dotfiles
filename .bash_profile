if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi 
if [ -f ~/.quorarc ]; then . ~/.quorarc; fi 
git config --global remote.origin.tagopt --no-tags
git config --global push.default upstream
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
