# General

alias cls="clear"



# Personal

CODE_DIR=$HOME/Code

DOCKER_CODE_DIR=$CODE_DIR/Docker
GITHUB_CODE_DIR=$CODE_DIR/GitHub

PYTHON_CODE_DIR=$CODE_DIR/Python
DJANGO_CODE_DIR=$PYTHON_CODE_DIR/Django

JAVASCRIPT_CODE_DIR=$CODE_DIR/JavaScript
REACT_DIR=$JAVASCRIPT_CODE_DIR/React

ASTI_CODE_DIR=$CODE_DIR/ASTI-CSD


alias cd_code="cd $CODE_DIR"

alias cd_dk="cd $DOCKER_CODE_DIR"

alias cd_gh="cd $GITHUB_CODE_DIR"

alias cd_py="cd $PYTHON_CODE_DIR"
alias cd_dj="cd $DJANGO_CODE_DIR"

alias cd_js="cd $JAVASCRIPT_CODE_DIR"
alias cd_react="cd $REACT_DIR"

alias cd_csd="cd $ASTI_CODE_DIR"



# Code Search
# TODO NICO: You could use ripgrep (rg) as an alternative to grep.

alias grep="grep --color=auto \
	--exclude '*.swp' \
	--exclude-dir .git \
	--exclude-dir node_modules"



# Permissions and Ownership Management

alias urechown="sudo chown -R $USER:$USER ."



# Git

alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gd="git diff"
alias gl="git log --graph"
alias gp="git push"
alias gs="git status"

alias gpom="gp -u origin master"
alias gca="git commit --amend"
alias grebase="git pull --rebase"

export GIT_SSL_NO_VERIFY=1



# Docker

alias dk="docker"

alias dc="dk ps"
alias de="dk exec"
alias di="dk image"
alias dn="dk network"
alias dv="dk volume"



# Sublime Text 3 (Hack-ish)

alias subl="/mnt/c/Program\ Files/Sublime\ Text\ 3/subl.exe"



# Prompt String
# For bash only; ohmyzsh goes meh

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '



# WSL 2

# This command will free your memory after about 20-30 seconds.
#
# References
# * https://github.com/nickjj/dotfiles/blob/master/.aliases#L68
# * https://github.com/microsoft/WSL/issues/4166#issuecomment-628493643

alias drop_cache="sudo sh -c \"echo 3 >'/proc/sys/vm/drop_caches' \
	&& swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'\""
