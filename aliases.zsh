# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reloadcli="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="$(brew --prefix coreutils)/libexec/gnubin/ls -ahlF --color --group-directories-first"
weather() { curl -4 wttr.in/${1:-berlin} }
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"

#StuffAndThings
alias randmac="openssl rand -hex 1 | tr '[:lower:]' '[:upper:]' | xargs echo \"obase=2;ibase=16;\" | bc | cut -c1-6 | sed 's/$/00/' | xargs echo \"obase=16;ibase=2;\" | bc | sed \"s/$/:$(openssl rand -hex 5 | sed 's/\(..\)/\1:/g; s/.$//' | tr '[:lower:]' '[:upper:]')/\" | xargs sudo ifconfig en0 ether"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias code="cd $HOME/code"

# Laravel
alias a="php artisan"
alias ams="php artisan migrate:fresh --seed"
alias serve='php artisan serve'
alias artisan="php artisan"
alias phpunit="vendor/bin/phpunit"

# Homestead
function homestead() {
    ( cd ~/Homestead && vagrant $* )
}

# Vagrant
alias v="vagrant global-status"
alias vup="vagrant up"
alias vhalt="vagrant halt"
alias vssh="vagrant ssh"
alias vreload="vagrant reload"
alias vrebuild="vagrant destroy --force && vagrant up"
alias vmr='vagrant reload --provision'

# Git
alias commit="git add . && git commit -m"
alias gcommit="git add . && git commit"
alias gst="git status"
alias gc="git checkout"
alias gd="git diff"
alias gl="git log --oneline --decorate --color"
