#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -h'
alias cp='cp -i'
alias update='sudo pacman -Syyu'
alias search='pacman -Qs'
alias free='free -h -m'
alias kernel='uname -r'
alias nf='neofetch'
alias tempcpp='cp ~/Documents/cpp/template/template.cpp '
alias cl='clear'

function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

