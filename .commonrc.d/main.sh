# General

alias cls="clear"



# Personal

CODE_DIR=$HOME/Code

DOCKER_CODE_DIR=$CODE_DIR/Docker
GITHUB_CODE_DIR=$CODE_DIR/GitHub

PYTHON_CODE_DIR=$CODE_DIR/Python
DJANGO_CODE_DIR=$PYTHON_CODE_DIR/Django

JAVASCRIPT_CODE_DIR=$CODE_DIR/JavaScript
JAVA_CODE_DIR=$CODE_DIR/Java
ELIXIR_CODE_DIR=$CODE_DIR/Elixir
R_CODE_DIR=$CODE_DIR/R
REACT_DIR=$JAVASCRIPT_CODE_DIR/React
REDUX_DIR=$JAVASCRIPT_CODE_DIR/Redux
NODE_DIR=$JAVASCRIPT_CODE_DIR/Node

ASTI_CODE_DIR=$CODE_DIR/ASTI-CSD
GITLAB_CODE_DIR=$ASTI_CODE_DIR/gitlab
GITLAB_USERNAME=nicobrent
GULAI_WEB_DIR=$GITLAB_CODE_DIR/$GITLAB_USERNAME/gulai-web
GULAI_DJANGO_DIR=$GULAI_WEB_DIR/gulai-django
GWT_TOOLS=$GITLAB_CODE_DIR/$GITLAB_USERNAME/gulai-web-tools


alias cd_code="cd $CODE_DIR"

alias cd_dk="cd $DOCKER_CODE_DIR"

alias cd_gh="cd $GITHUB_CODE_DIR"

alias cd_py="cd $PYTHON_CODE_DIR"
alias cd_dj="cd $DJANGO_CODE_DIR"

alias cd_js="cd $JAVASCRIPT_CODE_DIR"
alias cd_java="cd $JAVA_CODE_DIR"
alias cd_ex="cd $ELIXIR_CODE_DIR"
alias cd_r="$R_CODE_DIR"
alias cd_react="cd $REACT_DIR"
alias cd_redux="cd $REDUX_DIR"
alias cd_node="cd $NODE_DIR"

alias cd_csd="cd $ASTI_CODE_DIR"
alias cd_gl="cd $GITLAB_CODE_DIR"
alias cd_gd="cd $GULAI_DJANGO_DIR"
alias cd_gwt="cd $GWT_TOOLS"



# Doom Emacs

EMACS_DIR=$HOME/.emacs.d

export PATH=$PATH:$EMACS_DIR/bin:$HOME/.local/bin



# NVM (Node Version Manager)

# Defer initialization of nvm until nvm, node or a node-dependent command is
# run. Ensure this block is only run once if .bashrc gets sourced multiple times
# by checking whether __init_nvm is a function.

# Reference: https://www.growingwiththeweb.com/2018/01/slow-nvm-init.html

# if [ -s "$HOME/.nvm/nvm.sh" ]; then
#     export NVM_DIR="$HOME/.nvm"

#     [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

#     declare -a __node_commands=('nvm' 'node' 'npm' 'yarn' 'gulp' 'grunt' 'webpack')

#     function __init_nvm() {
#       for i in "${__node_commands[@]}"; do unalias $i; done
#       . "$NVM_DIR"/nvm.sh
#       unset __node_commands
#       unset -f __init_nvm
#     }

#     for i in "${__node_commands[@]}"; do alias $i='__init_nvm && '$i; done
# fi

source $HOME/.nvm/nvm.sh



# Code Search
# TODO NICO: You could use ripgrep (rg) as an alternative to grep.

alias grep="grep --color=auto \
	--exclude '*.swp' \
	--exclude-dir .git \
	--exclude-dir node_modules \
	--exclude-dir __pycache__"



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

alias subl="/mnt/c/Program\ Files/Sublime\ Text/subl.exe"



# Prompt String
# For bash only; ohmyzsh goes meh

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '



# MongoDB

alias start_mongo="sudo mongod --dbpath ~/data/db"



# WSL 2

# This command will free your memory after about 20-30 seconds.
#
# References
# * https://github.com/nickjj/dotfiles/blob/master/.aliases#L68
# * https://github.com/microsoft/WSL/issues/4166#issuecomment-628493643

alias drop_cache="sudo sh -c \"echo 3 >'/proc/sys/vm/drop_caches' \
	&& swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'\""

