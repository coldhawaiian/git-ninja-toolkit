#!/usr/local/bin/python

# Setup PATH for Homebrew packages
export PATH=/usr/local/bin:$PATH

# Initialize rbenv,
# https://github.com/sstephenson/rbenv#homebrew-on-mac-os-x
eval "$(rbenv init -)"

# Modified from http://superuser.com/a/580611/86416.
# Requires `mkdir ~/bin` and symlinking the Homebrew executables that
# you want to use.
case ":$PATH:" in
    *:$HOME/bin:*)
        # Do nothing if $PATH already contains $HOME/bin
    ;;
    *)
        # In every other case, add it to the front
        PATH=$HOME/bin:$PATH
    ;;
esac

# PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
# MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# Run this to set up Sublime Text alias:
# `ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ~/bin/sublime`

source '/usr/local/etc/bash_completion.d/git-completion.bash'
source '/usr/local/etc/bash_completion.d/git-prompt.sh'

PS1='\[\e[0;32m\]'
PS1="$PS1"'\u@\h '                  # user@host<space>
PS1="$PS1"'\[\e[0;33m\]\w'          # Current workding directory.
PS1="$PS1"'$(__git_ps1 " \[\e[0m\](\[\e[0;36m\]%s\[\e[0m\])") '
PS1="$PS1"'\[\e[0;35m\]'
PS1="$PS1"'\[\e \D{%I:%M:%S %p}\[\e[0m\]\n$ '

# These g* aliases require the Homebrew coreutils package
alias du='gdu'
alias ls='gls --all --group-directories-first --color=auto'

# Have `less` display color output by default
alias less='less --RAW-CONTROL-CHARS'

# Show all processes with users
alias procs='ps aux'

alias config-bash='vim ~/.bash_profile'
alias config-vim='vim ~/.vimrc'
alias reload='source ~/.bash_profile'
source "/Users/$USER/.workdir" # Define $GITHUB_DIR in this file
alias workdir="cd $GITHUB_DIR"

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
alias switch='git checkout'

alias drjava="java -jar $HOME/drjava"

function serve() {
    python -m SimpleHTTPServer "$1";
}
function list-paths() {
    ruby -e 'ENV["PATH"].split(":").each { |path| puts path }'
}
