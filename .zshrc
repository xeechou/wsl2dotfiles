### zsh setup
HISTFILE=~/.zsh_history
HISTSIZE=200
SAVEHIST=200
setopt extendedglob nomatch
unsetopt appendhistory autocd beep notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/developer/.zshrc'
PS1='[%C %B%T%b]%# '

autoload -Uz promptinit compinit select-word-style
promptinit
compinit

autoload colors; colors

backward-kill-dir () {
    local WORDCHARS=${WORDCHARS/\/}
    zle backward-kill-word
}
zle -N backward-kill-dir
bindkey '^[^?' backward-kill-dir

select-word-style bash
# End of lines added by compinstall


#alias
alias ls='ls --color=auto'
alias ll='ls -l'
alias rm='rm -i'
alias diff='diff --color=always'
alias grep='grep --color=always'
alias less='less -R'
alias aria2='aria2c --conf-path=${HOME}/.aria2/aria2.conf'
alias ariam='aria2c --conf-path=${HOME}/.aria2/ariam.conf'
alias sway='sway --my-next-gpu-wont-be-nvidia'
#line below needs correction
alias rapid='aria2c --conf-path=${HOME}/.aria2/aria2.rapidshare'
#proxy mail
alias pmutt='proxychains mutt 2> /dev/null'
####for emacs
alias emacx='emacsclient -nc'
alias emac='emacsclient -t'
export ALTERNATE_EDITOR=""
export EDITOR='emacsclient -t'
