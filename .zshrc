# Profiling
# `use zprof | less` after the shell has loaded to analyze calls
# zmodload zsh/zprof

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

test -e "$HOME/.pathrc" && source "$HOME/.pathrc"
test -e "$HOME/.aliasrc" && source "$HOME/.aliasrc"
test -e "$HOME/.localrc" && source "$HOME/.localrc"


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

. ${HOME}/.zsh-change-case

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION=true
# DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE="true"
SAVEHIST=1000
HUSTFILE=$HOME/.zsh_history
HISTTIMEFORMAT=''

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  alias-tips
  auto-color-ls
  autoupdate
  bundler
  caniuse
  command-time
  gem
  git
  last-working-dir
  oh-my-matrix
  nvm
  rails
  ruby
  rvm
  undollar
  vi-mode
  zsh-autosuggestions
  zsh-completions
  zsh-safe-rm
  zsh-sdkman
)

test -e "$ZSH/oh-my-zsh.sh" && source "$ZSH/oh-my-zsh.sh"

# On slow systems, checking the cached .zcompdump file to see if it must be
# regenerated adds a noticable delay to zsh startup.  This little hack restricts
# it to once a day.
autoload -Uz compinit
for dump in $HOME/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

# set autoload path
fpath=(~/.oh-my-zsh/custom/functions "${fpath[@]}")

# move cursor to end of line after history search completion
autoload -Uz bcp bip bup cani fp gst kp ks ll lx utils vmc vmi

# every time we load .zshrc, ditch duplicate path entries
typeset -U PATH fpath

bindkey '^?' backward-delete-char
bindkey '^W' backward-kill-word
bindkey '^R' history-incremental-search-backward
bindkey '^F' history-incremental-search-forward

# ~/.dircolors/themefile
# test -r '~/.dir_colors' && eval $(dircolors ~/.dir_colors)
eval $(gdircolors ~/.dircolors/dircolors.one-dark)

# History
export HISTFILE=$HUSTFILE
export HISTFILESIZE=$SAVEHIST
export HISTCONTROL=ignoredups

# Editor
export BUNDLER_EDITOR=vim
export EDITOR=vim
export TERM=xterm
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Alias tip: "

# Java
export JAVA_HOME="$(/usr/libexec/java_home)"
# export JAVA_HOME=$HOME/.sdkman/candidates
export MAVEN_OPTS='-Xmx2048m'
export CATALINA_OPTS='-Xmx2048m'
export GRADLE_HOME=$HOME/.sdkman/candidates

# Compiler Flags
export QT="$(brew --prefix qt)"
export LDFLAGS=-L$QT/lib
export CPPFLAGS=-I$QT/include
export PKG_CONFIG_PATH=$QT/lib/pkgconfig
export MONO_GAC_PREFIX=/usr/local
export DYLD_FALLBACK_LIBRARY_PATH=/Library/Frameworks/Mono.framework/Versions/Current/lib:/usr/local/lib:/usr/lib

# FZF
export FZF_DEFAULT_OPTS='--height=50% --min-height=15 --reverse'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND

# Homebrew
export ELASTICSEARCH_HOME=/usr/local/Cellar/elasticsearch/6.2.2

# NVM and Node
export NVM_DIR=$HOME/.nvm
export NVM_VERSION="$(nvm which current)"
export NODEJS_ORG_MIRROR=http://nodejs.org/dist

# added by travis gem
test -e "$HOME/.travis/travis.sh" && "$HOME/.travis/travis.sh"
test -e "$NVM_DIR/nvm.sh" && source "$NVM_DIR/nvm.sh"

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

test -e "$HOME/.iterm2_shell_integration.zsh" && source "$HOME/.iterm2_shell_integration.zsh"
test -e "/usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh" && source "/usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh"
test -e "$NVM_DIR/bash_completion" && source "$NVM_DIR/bash_completion"
test -e "$HOME/lib/vsts-cli" && source "$HOME/lib/vsts-cli"
test -e "$HOME/.autojump/etc/profile.d/autojump.sh" && source "$HOME/.autojump/etc/profile.d/autojump.sh"

export SDKMAN_DIR=$HOME/.sdkman

test -e "$SDKMAN_DIR/bin/sdkman-init.sh" && source "$SDKMAN_DIR/bin/sdkman-init.sh"
test -e "$HOME/.fzf.zsh" && source "$HOME/.fzf.zsh"

# zprof
test -e "$HOME/.npm-run.plugin.zsh/npm-run.plugin.zsh" && source "$HOME/.npm-run.plugin.zsh/npm-run.plugin.zsh"
