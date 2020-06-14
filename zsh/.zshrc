# general alias
alias cp='cp -i'
alias mkdir='mkdir -p'
alias free='free -h -m'
alias kernel='uname -r'
alias cl='clear'
alias v='vim'
alias sv='sudo vim'
alias svim='sudo vim'
alias htop='bashtop'
alias grep='rg'

# powerline 
function powerline_precmd() {
    PS1="$(powerline-shell --shell zsh $?)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi

# autocd
setopt  autocd autopushd
autoload -U compinit
compinit

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
alias ls="exa -F -s=name --long -S -h"
alias sl="ls"
alias l="ls"
alias s="ls"
alias la="ls -a"

# alias for package manager
alias update='sudo pacman -Syu'
alias search='pacman -Qs'

# curl?
alias weather='curl wttr.in'

