# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerline"
POWERLINE_HIDE_HOST_NAME="true"
POWERLINE_GIT_CLEAN="😄"
POWERLINE_GIT_DIRTY="😡"
POWERLINE_GIT_ADDED="➕"
POWERLINE_GIT_MODIFIED="📝"
POWERLINE_GIT_DELETED="💥"
POWERLINE_GIT_UNTRACKED="🙈"
POWERLINE_GIT_RENAMED="🔠"
POWERLINE_GIT_UNMERGED="➖"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git atom vi-mode)

bindkey '^?' backward-delete-char
bindkey '^W' backward-kill-word
bindkey '^R' history-incremental-search-backward
bindkey '^F' history-incremental-search-forward

export BUNDLER_EDITOR=vim
export EDITOR=vim

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/sbin:/usr/sbin:usr/local/lib:/usr/local/git/bin:./node/bin:./node_modules/.bin:$HOME/.rvm/bin:$HOME/.rvm/gems/${latest_ruby}/bin:/usr/local/opt/sqlite/bin:/usr/local/opt/gettext/bin:/usr/local/opt/icu4c/bin:/usr/local/opt/icu4c/sbin:/usr/local/opt/qt@5.5/bin:$PATH
export LDFLAGS=-L/usr/local/opt/qt@5.5/lib
export CPPFLAGS=-I/usr/local/opt/qt@5.5/include
export PKG_CONFIG_PATH=/usr/local/opt/qt@5.5/lib/pkgconfig
export MONO_GAC_PREFIX=/usr/local
export DYLD_FALLBACK_LIBRARY_PATH=/Library/Frameworks/Mono.framework/Versions/Current/lib:/usr/local/lib:/usr/lib

alias pg-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias ms-start='mysql.server start'
alias ms-stop='mysql.server stop'
alias redis='launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist'
alias mem='launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist'
alias rp='source ~/.profile'
alias be='bundle exec '
alias reset='rake db:reset'
alias migrate='rake db:migrate'
alias seed='rake db:seed'
alias gc='git clone'
alias apack='apm list --installed --bare > ~/Development/dotfiles/.atom/atom_packages.txt && cd ~/Development/dotfiles && git add .atom/atom_packages.txt && git commit -m "Updated packages" && git push'
alias npmclean='rm -rf node_modules && npm install'

# added by travis gem
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh

