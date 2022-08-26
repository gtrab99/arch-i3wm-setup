#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# general alias
alias ls='ls --color=auto'
alias e='exit'
alias c='clear'
alias ll='ls -al'
alias r='ranger'

# system alias
alias update='/home/george/scripts/pop_report -m "updating system..."& sudo pacman -Syu && yay -Syu' 
alias install='sudo pacman -S'
alias uninstall='sudo pacman -R'
alias enable='sudo systemctl enable'
alias disable='sudo systemctl disable'

# fun alias
alias pipes='pipes.sh -f 50 -c 1 -c 2 -c 3 -c 4'

# configs alias
alias polybar='vim ~/.config/polybar/config.ini'
alias i3='vim ~/.config/i3/config'
alias picom='vim ~/.config/picom/picom.conf'

# prompt style
PS1='[\u|bash]\W: '

# terminal art
macchina -o host kernel localIP terminal uptime resolution

# PATH
export PATH=$PATH:/home/george/.spicetify
export PATH=$PATH:/home/george/.local/bin 
export EDITOR=vim
