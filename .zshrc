# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME='powerline'
POWERLINE_HIDE_HOST_NAME='true'
POWERLINE_GIT_CLEAN='😄'
POWERLINE_GIT_DIRTY='😡'
POWERLINE_GIT_ADDED='➕'
POWERLINE_GIT_MODIFIED='📝'
POWERLINE_GIT_DELETED='💥'
POWERLINE_GIT_UNTRACKED='🙈'
POWERLINE_GIT_RENAMED='🔠'
POWERLINE_GIT_UNMERGED='➖'

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
DISABLE_CORRECTION=true
DISABLE_UPDATE_PROMPT=true

SAVEHIST=100
HUSTFILE=~/.zsh_history
HISTTIMEFORMAT='';

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(atom bundler django encode gem git git-extras github last-working-dir node npm osx pip python rails ruby rvm sudo vi-mode web-search)

source $ZSH/oh-my-zsh.sh

bindkey '^?' backward-delete-char
bindkey '^W' backward-kill-word
bindkey '^R' history-incremental-search-backward
bindkey '^F' history-incremental-search-forward

export BUNDLER_EDITOR=vim
export EDITOR=vim
export TERM=xterm
export HISTCONTROL=ignoredups
export JAVA_HOME="$(/usr/libexec/java_home)"
export MAVEN_OPTS='-Xmx2048m'
export GEM_PATH="$(which -a ruby | head -1)"

# Customize to your needs...
export PATH=$GEM_PATH/bin:/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/sbin:/usr/sbin:usr/local/lib:/usr/local/git/bin:./node/bin:./node_modules/.bin:$HOME/.rvm/bin:/usr/local/opt/sqlite/bin:/usr/local/opt/gettext/bin:/usr/local/opt/icu4c/bin:/usr/local/opt/icu4c/sbin:/usr/local/opt/qt@5.5/bin:$JAVA_HOME/bin:/usr/local/opt/python/libexec/bin:$PATH
export LDFLAGS=-L/usr/local/opt/qt@5.5/lib
export CPPFLAGS=-I/usr/local/opt/qt@5.5/include
export PKG_CONFIG_PATH=/usr/local/opt/qt@5.5/lib/pkgconfig
export MONO_GAC_PREFIX=/usr/local
export DYLD_FALLBACK_LIBRARY_PATH=/Library/Frameworks/Mono.framework/Versions/Current/lib:/usr/local/lib:/usr/lib
export NVM_DIR=$HOME/.nvm

alias pg-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias ms-start='mysql.server start'
alias ms-stop='mysql.server stop'
alias redis='launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist'
alias mem='launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist'
alias rp='source ~/.profile'
alias be='bundle exec '
alias gc='git clone'
alias pm='python manage.py'
alias ds_delete="sudo find . -name '*.DS_Store' -type f -delete"
alias latest-ruby='prompt_ruby_info'
alias apack='apm list --installed --bare > ~/Development/Personal/dotfiles/.atom/atom_packages.txt && cd ~/Development/Personal/dotfiles && git add .atom/atom_packages.txt && git commit -m "Updated packages" && git push'
alias npmclean='rm -rf node_modules && npm install'
alias gfr='find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} fetch --all \;'
alias ec='/Applications/eclipse/eclimd'
alias tc-start='rm -f ~/Development/apache-tomcat-7.0.59/logs/catalina.out; ~/Development/apache-tomcat-7.0.59/bin/startup.sh'
alias tc-stop='kill -9 $(ps -ef|grep tomcat|grep -v grep|awk "{print \$2}")'
alias tc-log='tail -f ~/Development/apache-tomcat-7.0.59/logs/catalina.out'
alias tc-restart='kill -9 $(ps -ef|grep tomcat|grep -v grep|awk "{print \$2}"); tc-start; tc-log'
alias merc-lib='pushd ~/Development/eTix/etix/web-mercury/src/main/webapp/WEB-INF/; ln -s ../../../../target/web-mercury-etix/WEB-INF/lib/ lib; popd'
alias etix-lib='pushd ~/Development/eTix/etix/web/src/main/webapp/WEB-INF/; ln -s ../../../../target/web-etix/WEB-INF/lib/ lib; popd'
alias styleguide='pushd ~/Development/eTix/etix/web/src/main/webapp/; ln -s ../../../target/web-etix/styleguide/ styleguide; popd'
alias build='mvn package war:exploded -Dmaven.test.skip=true'
alias merc-build='mvn package war:exploded -Pmercury --projects parent,shared,mercury,web-mercury'
alias aem-start='cd "$(dirname "$(find ~/ -type f -name aem-author-4502.jar | head -1)")" && java -Xmx1024m -jar aem-author-4502.jar -v'
alias flush-cache='sudo discoveryutil mdnsflushcache && sudo discoveryutil udnsflushcaches'

# added by travis gem
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

if type complete &>/dev/null; then
  _npm_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi
//
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${words[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
###-end-npm-completion-###

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
