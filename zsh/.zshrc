export ZSH="/home/aldih/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# general alias
alias rm='rm -i'
alias mv='mv -i'
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
alias df='df -h'

# extraction command
extract ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;      
      *)           echo "'$1' cannot be extracted via extract" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}


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
alias ls="exa -F -s=name --long -S -h --group-directories-first -G"
alias la="ls -a"
alias ld="exa -F -s=name --long -S -h -D -G"
alias sl="ls"
alias l="ls"
alias s="ls"

# alias for package manager
alias update='yay'
alias search='pacman -Qs'
alias ccache='yay -Scc --noconfirm'

# curl?
alias weather='curl wttr.in'
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
