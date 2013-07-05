LS_COLORS='di=36'               # Cyan directories
LS_COLORS="$LS_COLORS"':fi=0:'  # Default files
LS_COLORS="$LS_COLORS"':ln=0'   # Default symlinks
LS_COLORS="$LS_COLORS"':pi=0'   # Default fifo file
LS_COLORS="$LS_COLORS"':so=0'   # Default socket file
LS_COLORS="$LS_COLORS"'bd=0'
LS_COLORS="$LS_COLORS"'cd=0'
LS_COLORS="$LS_COLORS"'or=0'
LS_COLORS="$LS_COLORS"'mi=0'
LS_COLORS="$LS_COLORS"'ex=0'    # Default executable file
LS_COLORS="$LS_COLORS"'*.rpm=90'
export LS_COLORS

alias less='less --raw-control-chars --quiet'
alias grep='grep --extended-regexp' # show differences in colour
alias lsp='ls --all -U1 --classify --color'
PS1='\[\e[0;32m\]'
PS1="$PS1"'\u@\h '                  # user@host<space>
PS1="$PS1"'\[\e[0;33m\]\w'          # Current workding directory.
PS1="$PS1"'$(__git_ps1 " \[\e[0m\](\[\e[0;36m\]%s\[\e[0m\])") '
PS1="$PS1"'\[\e[0;35m\]'
PS1="$PS1"'\[\e \D{%I:%M:%S %p}\[\e[0m\]\n$ '

alias difftool='git difftool --tool=bc3 --no-prompt'
alias ga='git add'
alias gai='git add --interactive'
alias galine='git add --patch'
# alias gb='git branch'
# alias gc='git checkout'
alias gd='git diff'
alias gdt='git difftool --no-prompt'
alias gdline='git diff --word-diff'
alias gds='git diff --staged'
alias gdsline='git diff --staged --word-diff'
# alias gf='git fetch'
# Accepted color values:
# The value for these configuration variables is a list of colors (at
# most two) and attributes (at most one), separated by spaces. The
# colors accepted are normal, black, red, green, yellow, blue, magenta,
# cyan and white; the attributes are bold, dim, ul, blink and reverse.
# The first color given is the foreground; the second is the background.
# The position of the attribute, if any, doesn't matter.
#
# alias glog='git log --pretty=format:"%h - %an, %ar : %s"'
# alias glog='git log --pretty=format:"%C(yellow)%h %C(reset)%s"'
alias glog='git log --format="%C(yellow)%h %C(blue bold)%an %C(reset)%s" --graph'
# alias gm='git merge'
alias go='git commit'
# alias grem='git remote'
alias gs='git status'
# git log --merges only shows merge commits
# git log --first-parent only follows first parent when encountering merge commits
alias mainline='glog --first-parent'
alias merged='git branch --merged'
alias notmerged='git branch --no-merged'
alias origin='git branch -r | grep origin'
# alias publish='git push origin'
alias reflog='git reflog --relative-date'
alias remote='git branch -r | grep'
alias slog='glog --stat'
alias stash='git stash'
alias switch='git checkout'

# Mercurial bash completion
# source ~/bash_completion.hg

# Command to trim trailing whitespace in multiple files
# find . -type f -print0 | xargs -0 sed -i -r 's/[ \t]+$//'

alias notepad='notepad++'
alias 'launch-ssh'='eval `ssh-agent -s`; ssh-add -t 8h'
alias 'kill-ssh'='ssh-agent -k'

alias reload='source "/c/Program Files (x86)/Git/etc/profile"'
alias config='notepad ~/.bashrc'
alias configit='notepad ~/.gitconfig'
alias workdir='cd ~/Documents/GitHub'
