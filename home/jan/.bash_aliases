#!/bin/bash

# ~/.bash_aliases
# 

#aliases for git

alias  gam='echo " > git commit -am" && git commit -am '
alias  grm='git rm'
alias  gmv='git mv'
alias  grr='git reset --hard HEAD'
alias goop='git commit --amend -C HEAD -n'
alias   ga='git add'
alias   gp='git pull'
alias  gpu='echo " > git push " && git push'
alias   gl='git log --name-status'
alias   gs='echo " > git status" && git status'
alias   gf='echo " > git fetch -p" &&  git fetch -p'
alias   gm='git commit -m'
alias   gb='echo " > git branch" && git branch'
alias   gbr='echo " > git branch -r" && git branch -r'
alias   gcb='echo "git checkout -b" && git checkout -b'
alias   gc='git checkout'
alias   gac='echo " > git add .; git commit -am " && git add .; git commit -am '
alias   gpo='echo " > " && git pull origin '
alias   gpuo='echo " > git push origin " && git push origin '
alias   gpom='echo " > git pull origin master" && git pull origin master'
alias   gpuom='echo " > git push origin master" && git push origin master'
alias   gpod='git pull origin development'
alias   gpuod='git push origin development'
alias   gpor='git pull origin releases'
alias   gpuor='git push origin releases'
alias   gcm='git checkout master'
alias   gcr='git checkout releases'
alias   gcd='git checkout development'
alias   gch='git checkout hotfix'
alias   gcp='git checkout pre'
alias   gmh='git merge hotfix'
alias   gmd='git merge development'
alias   gmr='git merge releases'
alias   gmm='git merge master'
alias   gff='git fetch -p && git rebase origin/\$(just_git_branch)'
alias   gls='git log --pretty=format:"%C(reset)%h %C(yellow)%ad%C(yellow)%d %C(reset)%s%C(green) [%cn]" --decorate --date=short'
alias   gclone='echo " > git clone " && git clone '
alias   gcount='echo " > git shortlog -s -n --all" && git shortlog -s -n --all'
alias   gla='echo " > git log --author" && git log --author '

alias   gusers="git log --format='%aN' | sort -u"

function glas() {
	git log --name-only --pretty=format: --author="$1" --since=$2 | sort | uniq
}




# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# programs
alias st='sublime &'
alias firefox="firefox &"
alias chrome="google-chrome &"
alias f='thunar ./ &'


# general shortcuts
alias pro="cd ~/htdocs/"

# be nice
alias please=sudo

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # OS X `ls`
	colorflag="-G"
fi

# List all files colorized in long format
alias l="ls -l ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -la ${colorflag}"

# List only directories
alias lsd='ls -l | grep "^d"'

# Always use color output for `ls`
if [[ "$OSTYPE" =~ ^darwin ]]; then
	alias ls="command ls -G"
else
	alias ls="command ls --color"
	export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
fi

# `cat` with beautiful colors. requires Pygments installed.
# 							   sudo easy_install Pygments
alias c='pygmentize -O style=monokai -f console256 -g'

# GIT STUFF

# Undo a `git push`
alias undopush="git push -f origin HEAD^:master"


# git root
alias gr='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache"

# npm
alias npmp="sudo npm publish"
alias npma="sudo npm adduser"
alias npmi="sudo npm install"
alias npmg="sudo npm install -g"
alias npmu="sudo npm update"
alias npmr="sudo npm uninstall"
alias npmrg="sudo npm uninstall -g"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""



# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# Shortcuts
alias g="git"
alias v="vim"

# File size
alias fs="stat -f \"%z bytes\""

# ROT13-encode text. Works for decoding, too! ;)
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# Empty the Trash on all mounted volumes and the main HDD
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Run DropboxUploader if you have it installed
alias dropbox="~/code/Dropbox-Uploader/dropbox_uploader.sh $1"

# PlistBuddy alias, because sometimes `defaults` just doesn’t cut it
alias plistbuddy="/usr/libexec/PlistBuddy"

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
	alias "$method"="lwp-request -m '$method'"
done

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 10'"
alias hax="growlnotify -a 'Activity Monitor' 'System error' -m 'WTF R U DOIN'"


#alias chaplin='cd frontend/chaplin/ && make && cd ../..'

alias home='cd ~/'

alias chaplin='coffee --watch --bare --output src/public/static/js/um/ frontend/chaplin/coffee/'

alias cafe='coffee --watch --bare --output src/public/static/js/ frontend/cafe/'

alias jadeflux='jade --pretty --watch' 
