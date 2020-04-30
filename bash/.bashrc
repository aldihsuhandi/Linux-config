#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# general alias
alias cp='cp -i'
alias mkdir='mkdir -p'
alias free='free -h -m'
alias kernel='uname -r'
alias nf='neofetch'
alias cl='clear'
alias v='vim'
alias sv='sudo vim'
alias svim='sudo vim'
alias htop='bashtop'

# autocd
shopt -s autocd

# powerline 
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# coding template
templatecpp(){
    cp ~/Documents/cpp/template/template.cpp "$1"
    vim "$1"
}

templatec(){
    cp ~/Documents/c/template/template.c "$1"
    vim $1
}

alias tempcpp=templatecpp
alias tempc=templatec

# compiling code shortcut
run_and_compile_java(){
    javac "$1".java
    java "$1"
}

alias runjava=run_and_compile_java

# alias for ls typo and somefunction
alias ls='ls --color=auto -h'
alias sl="ls"
alias l="ls"
alias s="ls"

# alias for package manager
alias update='sudo pacman -Syyu'
alias search='pacman -Qs'
