alias resource='if [ -f ~/.zshrc ]; then . ~/.zshrc; fi'
alias edit='vim -p ~/.zshrc ~/.bashrc ~/.bash_profile ~/.bash_aliases ~/.tmux.conf'

alias nr='npm run'

if ls --help 2>&1 | grep -q -- --color
then
    alias ls='ls --color=auto -F'
else
    alias ls='ls -FG'
fi
alias ll='ls -lh'
alias la='ls -lAh'
alias ~='cd ~'
alias -- -='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

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
alias gbl='git branch -l'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gt='git stash'
alias gta='git stash apply'
alias gm='git merge'
alias gr='git rebase'
alias gl='git log --oneline --decorate --graph'
alias gs='git show'
alias gd='git diff'
alias gdc='git diff --cached'
alias gps='git push'
alias gpl='git pull'
