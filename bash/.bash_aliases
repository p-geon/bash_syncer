# bash_aliases
alias A="cat ~/.bash_aliases"
alias V="vim ~/.bash_aliases"
alias RR="source ~/.bashrc"
alias ZZ="source ~/.zshrc"
alias SET="cp bash/.bash_aliases ~/.bash_aliases && reload"
alias RRR="UPDATE && reload"
alias SS="A | grep"

# show Directory
alias Td="tree -d -L 2 ./"
alias T1d="tree -d -L 1 ./"
alias T2d="tree -d -L 2 ./"
alias T3d="tree -d -L 3 ./"
alias T="tree -L 2 ./"
alias T1="tree -L 1 ./"
alias T2="tree -L 2 ./"
alias T3="tree -L 3 ./"
alias TT="tree -d -L 2 ~/"
alias TTT="tree -d -L 3 ~/"

alias L="ls -la"
alias LL="ls -la ../"
alias W="ls -l | wc -l"
alias DU="du -d 2 -m"

# cd variant
alias ~="cd ~/"
alias ..="cd ../"
alias ...="cd ../../"
alias z="cd -"

# some more ls aliases
alias l='ls -CF'
alias ll='ls -alF'
alias la='ls -A'
alias lt="ls -lt"
alias lx="ls -Xl"
alias sl="l"

# tmux
alias tmux.cs="cat ~/.tmux.conf | grep bind"
alias t="tmux"
alias ta="tmux a"
alias tk="tmux kill-server"
alias mt="make tmux"
alias mtv="make tmux-vs"

# make
alias m="make"
alias mb="make build"
alias mr="make run"
alias mbr="make br"
alias mc="make clean"
alias mh="make help"

# git
alias g="git"
## add
alias gadry="git add -A --dry-run" #pre-check without adding
alias ga="git add"
alias gaa="git add -A" #all
alias gau="git add -u" #exclude untrack files
alias gap="git add -p" #patch
alias unadd="git reset --mixed HEAD" # revert add

## commit
alias gc="git commit -m"
alias gam="git commit --amend"
alias uncommit="git reset --soft HEAD^" # revert commit

## pull/push
alias gpl="git pull origin main"
alias gp="git push"
alias main="git push origin main"
alias master="git push origin master"
alias gacp="git add -A && git commit -m 'update' && git push origin main"
## branch/graph
alias gb="git branch"
alias gl="git log --oneline"
alias gg="git log --graph --all --format='%x09%an%x09%h %d %s'"
alias ggg="git log --graph --date=short --decorate=short --pretty=format:'%Cgreen%h %Creset%cd %Cblue%cn %Cred%d %Creset%s'"
alias gs="git status"
alias gss="git status -s"
## config
alias gcl="git config --list"
## stash
alias gswap="git stash -u && git checkout -b swap && git stash pop"

# Docker
alias d="docker"
alias di="docker images"
alias dp="docker ps -a"

alias drmi="docker images -f dangling=true -q | xargs docker rmi -f"
alias dstop="docker ps -a -q | xargs docker rm -f"
alias dclean="dstop && drmi"

# watch
alias wn="watch -n 2.0 nvidia-smi"

# basic-command
alias a="alias"
alias q="exit"
alias c="clear"
alias reload="exec bash -l"
alias G="grep"
alias p="pwd"

# python
alias ip="ipython"

# editor
alias vs="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code -r"
alias vscode="vs"
