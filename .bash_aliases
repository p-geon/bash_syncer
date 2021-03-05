# bash_aliases
alias A="cat ~/.bash_aliases"
alias V="vim ~/.bash_aliases"
alias RR="source ~/.bashrc"
alias SET="cp .bash_aliases ~/.bash_aliases && reload"
alias GET="cp ~/.bash_aliases .bash_aliases"
alias UPDATE="git add .bash_aliases && git commit -m 'update' && git push origin main"
alias RRR="UPDATE && reload"

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
alias t="tmux"
alias ta="tmux a"
alias tk="tmux kill-server"
alias mt="make tmux"
alias mtv="make tmux-vs"

# make
alias m="make"
alias mb="make b"
alias mr="make r"
alias mbr="make br"
alias mc="make clean"
alias mh="make help"

# git
alias g="git"
## add
alias ga="git add"
alias gaa="git add -A"
## commit
alias gc="git commit -m"
alias gca="git commit --amend -m"
## pull/push
alias gpl="git pull origin main"
alias gp="git push"
alias gpom="git push origin main"
alias gacp="git add -A && git commit -m 'update' && git push origin main"
## branch/graph
alias gb="git branch"
alias gl="git log --oneline"
alias gg="git log --graph --all --format='%x09%an%x09%h %d %s'"
alias gs="git status -s"
## config
alias gcl="git config --list"
## stash
alias gst="git stash"
alias igst="git stash pop"

# Docker
alias d="docker"
alias di="docker images"
alias dp="docker ps -a"

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
alias jn="jupyter notebook"
