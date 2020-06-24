# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ -t 0 && $- = *i* ]]
then
    stty -ixon
fi 

alias ls='ls --color=auto'

#PS1='[\u@\h \W]\$ '
#PS1="\e[0;60m🐵\e[m "
#export PS1="\e[0;33m😷\e[m "
export PS1="\e[1;35m[\W]\e[m\e[0;34m🐵\e[m "

alias top=ytop
alias x=startx
alias vi=micro
alias nano=micro
alias pico=micro

alias ea="vi ~/.bashrc && source ~/.bashrc"

alias l="ls -lhA"
alias i="sudo xbps-install -Sy "
alias remove="sudo xbps-remove -y"
alias update="sudo xbps-install -Suvy"
alias wifi="sudo wpa_supplicant -i wlp5s0 -c /etc/wpa_supplicant/wpa_supplicant.conf -B"
alias search="xbps-query -Rs "

alias cls=clear
alias stopx="sudo killall Xorg"
alias xs=cd
alias cdd="cd ../"
alias cd-="cd -"

alias A="git add -A"
alias S="git status"
alias C="git commit -m"
alias L="git log"
alias Cc-="git checkout -"
alias Cc="git checkout"

export MANPAGER='less -s -M +Gg'

export LESS_TERMCAP_mb=$(tput bold; tput setaf 22)
export LESS_TERMCAP_md=$(tput bold; tput setaf 69)
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 136; tput setab 20)
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 208)
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)
export LESS_TERMCAP_ZN=$(tput ssubm)
export LESS_TERMCAP_ZV=$(tput rsubm)
export LESS_TERMCAP_ZO=$(tput ssupm)
export LESS_TERMCAP_ZW=$(tput rsupm)


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
