#
# ~/.bashrc
#

[[ $- != *i* ]] && return

alias ls='eza -a --color=auto'
alias vim='nvim'
alias yay='paru'

alias grep='grep --color=auto'

PS1='\n\e[1;37m\][ \e[1;31m\t \d \e[1;37m\]] \e[1;31m\]>\e[01;37m\] \u\e[00;37m\]\n\e[00;36m\]\e[00;37m\]\w \e[01;31m\]\$ \e[01;37m\]'
