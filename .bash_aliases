TF_ALIAS=fuck alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
alias resource='source ~/.zshrc'
alias edit='vim -p ~/.zshrc ~/.profile ~/.bashrc ~/.bash_aliases'

# show hidden files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServicesFinder.app'

# git related
alias g='git status'
alias ga='git add'
alias gaa='git add .'alias g='git status'
alias ga='git add'
alias gaa='git add .'
alias gau='git add -u'
alias gc='git commit -m'
alias gcamend='git commit --amend --no-edit'
alias gbd='git branch -d'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gt='git stash'
alias gta='git stash apply'
alias gm='git merge'
alias gr='git rebase'
alias gl='git log --oneline --decorate --graph'
alias gs='git show'
alias gd='git d'
alias gdc='git d --cached'
alias gps='git push'
alias gpl='git pull'

# quora
alias dev='ssh -p 478 kli@10.0.2.249'
alias dev2='ssh -p 478 kli@10.0.2.249 -t "tmux -CC new-session -A -D -s mainsession"'
