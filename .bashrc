# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ -t 0 && $- = *i* ]]
then
    stty -ixon
fi 
alias cp='cp -i'
alias mv='mv -i'
alias sudo='sudo '
alias ls='ls --color=auto'
alias cd-="cd -"
alias cdd="cd .."
alias cddd="cd ../.."
alias rmf='rm -rf '
alias vol="alsamixer"
alias ea="vi ~/.bashrc && source ~/.bashrc"
alias ae=ea
alias tree="tree -L 1"
alias treee="tree -L 2"
alias treeee="tree -L 3"
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
alias search="xbps-query -Rs $1"
alias cls=clear
alias stopx="sudo killall Xorg"
alias xs=cd
#alias wifi="sudo wpa_supplicant -i wlp5s0 -c /etc/wpa_supplicant/wpa_supplicant.conf -B"
alias wifi="sudo wpa_supplicant -i wlp3s0 -c /etc/wpa_supplicant/wpa_supplicant.conf -B"

alias A="git add -A"
alias S="git status"
alias C="git commit -m"
alias AC="A; C"
alias L="git lg"
alias Ch-="git checkout -"
alias Ch="git checkout"
alias M="git commit --amend"

alias ns="npm run start"
alias nv="npm run serve"
alias ni="npm install"
alias ytdla="youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0 "
alias monitor1="xrandr --output LVDS1 --auto; xrandr --output VGA1 --off"
alias monitor2="xrandr --output LVDS1 --off; xrandr --output VGA1 --mode 1920x1080"
#alias monitors="xrandr --output VGA1 --mode 1920x1080 --right-of LVDS1"
alias monitors="xrandr --output VGA1 --mode 1920x1080 --left-of LVDS1"


alias zinc="cd ~/zinc/zinc-core/; killall java; git pull; docker-compose down; docker-compose up -d; ./runZincCore.sh $1"

export MANPAGER='less -s -M +Gg'

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

source ~/src/pretty-git-for-bash/bash_pretty_git

#################################################################
# ZINC
#connect to mysql inside a container $1=img_hash $2=username
alias dockermysql="docker exec -it mysql $1 -u $2 -p"
