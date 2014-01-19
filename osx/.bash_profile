PATH='/usr/local/bin:'"$PATH"
PATH="$PATH""/Applications/Sublime Text.app/Contents/SharedSupport/bin"

source '/usr/local/etc/bash_completion.d/git-completion.bash'
source '/usr/local/etc/bash_completion.d/git-prompt.sh'

PS1='\[\e[0;32m\]'
PS1="$PS1"'\u@\h '                  # user@host<space>
PS1="$PS1"'\[\e[0;33m\]\w'          # Current workding directory.
PS1="$PS1"'$(__git_ps1 " \[\e[0m\](\[\e[0;36m\]%s\[\e[0m\])") '
PS1="$PS1"'\[\e[0;35m\]'
PS1="$PS1"'\[\e \D{%I:%M:%S %p}\[\e[0m\]\n$ '

alias ls='ls -a'
alias config-bash='vim ~/.bash_profile'
alias config-vim='vim ~/.vimrc'
alias reload='source ~/.bash_profile'

alias ga='git add'
alias gai='git add --interactive'
alias galine='git add --patch'
alias gd='git diff'
alias gdt='git difftool --no-prompt'
alias gdts='git difftool --staged --no-prompt'
alias gdline='git diff --word-diff'
alias gds='git diff --staged'
alias gdsline='git diff --staged --word-diff'
alias glog='git log --format="%C(yellow)%h %C(blue bold)%an %C(reset)%s" --graph'
alias go='git commit'
alias gs='git status'
alias mainline='glog --first-parent'
alias merged='git branch --merged'
alias notmerged='git branch --no-merged'
alias origin='git branch -r | grep origin'
alias reflog='git reflog --relative-date'
alias remote='git branch -r | grep'
alias slog='glog --stat'
alias stash='git stash'
alias sublime='"/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"'
alias switch='git checkout'
