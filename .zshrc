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
plugins=(git sublime vi-mode)

source $ZSH/oh-my-zsh.sh

bindkey '^?' backward-delete-char
bindkey '^W' backward-kill-word
bindkey '^R' history-incremental-search-backward
bindkey '^F' history-incremental-search-forward

export BUNDLER_EDITOR=vim
export EDITOR=vim
export MAVEN_HOME='/Users/jchris/Development/apache-maven-3.2.5/'
export JAVA_HOME="$(/usr/libexec/java_home)"
export MAVEN_OPTS='-Xmx2048m'

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/sbin:/usr/sbin:$HOME/.rvm/bin:$MAVEN_HOME/bin:$JAVA_HOME/bin
export MONO_GAC_PREFIX=/usr/local

alias nw="/Applications/NodeJS/nwjs.app/Contents/MacOS/nwjs"
alias pg-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias ms-start= 'mysql.server start'
alias ms-stop='mysql.server stop'
alias rp='source ~/.profile'
alias be='bundle exec '
alias reset='rake db:reset'
alias migrate='rake db:migrate'
alias seed='rake db:seed'
alias ec='/Applications/eclipse/eclimd'
alias tc-start='rm -f /Users/jchris/Development/apache-tomcat-7.0.59/logs/catalina.out; /Users/jchris/Development/apache-tomcat-7.0.59/bin/startup.sh'
alias tc-stop='kill -9 $(ps -ef|grep tomcat|grep -v grep|awk "{print \$2}")'
alias tc-log='tail -f /Users/jchris/Development/apache-tomcat-7.0.59/logs/catalina.out'
alias tc-restart='kill -9 $(ps -ef|grep tomcat|grep -v grep|awk "{print \$2}"); tc-start; tc-log'
alias etix-lib='pushd /Users/jchris/Development/eTix/etix/web/src/main/webapp/WEB-INF/; ln -s ../../../../target/web-etix/WEB-INF/lib/ lib; popd'
alias styleguide='pushd /Users/jchris/Development/eTix/etix/web/src/main/webapp/; ln -s ../../../target/web-etix/styleguide/ styleguide; popd'
alias build='mvn package war:exploded -Dmaven.test.skip=true'

# added by travis gem
[ -f /Users/jchris/.travis/travis.sh ] && source /Users/jchris/.travis/travis.sh

