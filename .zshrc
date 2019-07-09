# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

if type nvim > /dev/null 2>&1; then
	alias vim='nvim'
fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME='powerline'
# POWERLINE_HIDE_HOST_NAME='true'
# POWERLINE_GIT_CLEAN='😄'
# POWERLINE_GIT_DIRTY='😡'
# POWERLINE_GIT_ADDED='➕'
# POWERLINE_GIT_MODIFIED='📝'
# POWERLINE_GIT_DELETED='💥'
# POWERLINE_GIT_UNTRACKED='🙈'
# POWERLINE_GIT_RENAMED='🔠'
# POWERLINE_GIT_UNMERGED='➖'

ZSH_THEME='spaceship'

SPACESHIP_PROMPT_ORDER=(
  time          # Time stampts section
  user          # Username section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  xcode         # Xcode section
  swift         # Swift section
  php           # PHP section
  venv          # virtualenv section
  pyenv         # Pyenv section
  ember         # Ember.js section
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  char          # Prompt character
)

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

SAVEHIST=1000
HUSTFILE=~/.zsh_history
HISTTIMEFORMAT=''

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(atom bundler encode gem git last-working-dir nvm rails ruby rvm vi-mode zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

bindkey '^?' backward-delete-char
bindkey '^W' backward-kill-word
bindkey '^R' history-incremental-search-backward
bindkey '^F' history-incremental-search-forward

# History
export HISTFILE=$HUSTFILE
export HISTFILESIZE=$SAVEHIST
export HISTCONTROL=ignoredups


# Editor
export BUNDLER_EDITOR=vim
export EDITOR=vim
export TERM=xterm


# Java
export JAVA_HOME="$(/usr/libexec/java_home)"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_152.jdk/Contents/Home
export MAVEN_OPTS='-Xmx2048m'
export CATALINA_OPTS='-Xmx2048m'


# Proxy/SSL
export SSL_CERT_FILE=/usr/local/etc/openssl/certs/cert.pem


# Compiler Flags
export QT="$(brew --prefix qt)"
export LDFLAGS=-L$QT/lib
export CPPFLAGS=-I$QT/include
export PKG_CONFIG_PATH=$QT/lib/pkgconfig
export MONO_GAC_PREFIX=/usr/local
export DYLD_FALLBACK_LIBRARY_PATH=/Library/Frameworks/Mono.framework/Versions/Current/lib:/usr/local/lib:/usr/lib


# Homebrew
export ELASTICSEARCH_HOME=/usr/local/Cellar/elasticsearch/6.2.2


# NVM and Node
export NVM_DIR=$HOME/.nvm
export NODEJS_ORG_MIRROR=http://nodejs.org/dist
export NODE_TLS_REJECT_UNAUTHORIZED=0


# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/lib:/usr/local/git/bin:$HOME/.rvm/bin:/usr/local/opt/icu4c/bin:/usr/local/opt/icu4c/sbin:/usr/local/opt/qt@5.5/bin:$JAVA_HOME/bin:/usr/local/opt/python/libexec/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/Library/PackageManager/bin:$PATH


alias pg-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias ms-start='mysql.server start'
alias ms-stop='mysql.server stop'
alias redis='launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist'
alias mem='launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist'
alias rp='source ~/.zshrc'
alias pm='python manage.py'
alias ds_delete="sudo find . -name '*.DS_Store' -type f -delete"
alias latest-ruby='prompt_ruby_info'
alias npmclean='rm -rf node_modules && npm i'
alias tc-start='rm -f ~/Development/commercial-portal/server/dxp/tomcat-8.0.32/logs/catalina.out; ~/Development/commercial-portal/server/dxp/tomcat-8.0.32/bin/startup.sh'
alias tc-stop='kill -9 $(ps -ef|grep tomcat|grep -v grep|awk "{print \$2}")'
alias tc-log='tail -f ~/Development/commercial-portal/server/dxp/tomcat-8.0.32/logs/catalina.out'
alias tc-restart='kill -9 $(ps -ef|grep tomcat|grep -v grep|awk "{print \$2}"); tc-start; tc-log'
alias aem-start='cd "$(dirname "$(find ~/ -type f -name aem-author-4502.jar | head -1)")" && java -Xmx1024m -jar aem-author-4502.jar -v'
alias flush-cache='sudo discoveryutil mdnsflushcache && sudo discoveryutil udnsflushcaches'
alias gc='git clone'
alias gcd1='git clone --depth 1'
alias mp='sudo purge'
alias mc="sh ~/osx-clean-memory.sh"

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
test -e "/usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh" && source "/usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh"

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then source $(brew --prefix)/etc/bash_completion; fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -s "$HOME/lib/vsts-cli" ] && \. "$HOME/lib/vsts-cli"
