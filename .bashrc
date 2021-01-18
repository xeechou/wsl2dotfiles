#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$HOME/.bin:$PATH
export XDG_CONFIG_HOME=$HOME/.config
alias ls='ls --color=auto'
alias ll='ls -l'
alias rm='rm -i'
alias aria2='aria2c --conf-path=${HOME}/.aria2/aria2.conf'
#line below needs correction
alias rapid='aria2c --conf-path=${HOME}/.aria2/aria2.rapidshare'
PS1='[\u@\h \W]\$ '
