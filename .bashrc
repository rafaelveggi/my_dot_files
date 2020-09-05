# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ -t 0 && $- = *i* ]]
then
    stty -ixon
fi 

alias sudo='sudo '
alias ls='ls --color=auto'

alias cd-="cd -"
alias cdd="cd .."
alias cddd="cd ../.."

alias rmf='rm -rf '
#PS1='[\u@\h \W]\$ '
#PS1="[\W]🐵 "
#alias 🐵="whoami; uname -a"

alias vol="alsamixer"

alias ea="vi ~/.bashrc && source ~/.bashrc"
alias ae=ea

#alias kr="sudo kbdrate -r 2.0"

alias tree="tree -L 1"
alias treee="tree -L 2"
alias treeee="tree"

alias top=ytop
alias x=startx

alias vi=micro
alias nano=micro
alias pico=micro
alias vsc="code-oss ."

alias psx="ps aux |grep "
alias xev="xev -event keyboard"
alias xm="xmodmap ~/.Xmodmap"

alias md="mkdir -p"
alias l="ls -lhA"
alias i="sudo xbps-install -Sy "
alias remove="sudo xbps-remove -y"
alias update="sudo xbps-install -Suvy; sudo xbps-remove -o"
alias search="xbps-query -Rs "

alias cls=clear
alias stopx="sudo killall Xorg"
alias xs=cd

alias wifi="sudo wpa_supplicant -i wlp5s0 -c /etc/wpa_supplicant/wpa_supplicant.conf -B"

alias A="git add -A"
alias S="git status"
alias C="git commit -m"
alias L="git lg"
alias Cc-="git checkout -"
alias Cc="git checkout"
alias amend="git commit --amend"

alias ns="npm run start"

export MANPAGER='less -s -M +Gg'

#export LESS_TERMCAP_mb=$(tput bold; tput setaf 22)
#export LESS_TERMCAP_md=$(tput bold; tput setaf 69)
#export LESS_TERMCAP_me=$(tput sgr0)
#export LESS_TERMCAP_so=$(tput bold; tput setaf 136; tput setab 20)
#export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
#export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 208)
#export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
#export LESS_TERMCAP_mr=$(tput rev)
#export LESS_TERMCAP_mh=$(tput dim)
#export LESS_TERMCAP_ZN=$(tput ssubm)
#export LESS_TERMCAP_ZV=$(tput rsubm)
#export LESS_TERMCAP_ZO=$(tput ssupm)
#export LESS_TERMCAP_ZW=$(tput rsupm)


export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


source ~/pretty-git-for-bash/bash_pretty_git
