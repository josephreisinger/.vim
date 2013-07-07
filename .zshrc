# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="alanpeabody"
# ZSH_THEME="dpoggi"
# ZSH_THEME="jreese"
# ZSH_THEME="lambda"
ZSH_THEME="mh"
# ZSH_THEME="muse"
# ZSH_THEME="minimal"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew github node npm osx pip)

eval `gdircolors ~/.dircolors`

source $ZSH/oh-my-zsh.sh
# alias ls='ls --color=tty -F -s -h' 
unalias ls
alias ls='gls --color=tty -F -s -h' 
alias l='ls'

# Customize to your needs...
export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/texbin:/usr/local/share/python/

# for rabbitmiq
export PATH=$PATH:/usr/local/sbin

# for julia
# export DYLD_LIBRARY_PATH=/usr/local/gfortran/lib


# for mvyn
export PATH=$PATH:~/Desktop/premise/dev/commons/src/main/unix/

# for ruby 1.9
# export PATH=/usr/local/Cellar/ruby/1.9.3-p194/bin:$PATH
export PATH=/usr/local/Cellar/ruby/2.0.0-p247/bin:$PATH

# for scala interpreter
export JAVA_OPTS="-Dfile.encoding=UTF-8"

setopt autolist
unsetopt menucomplete
unsetopt correct_all


# put local first
export PATH=/usr/local/bin:~/:$PATH

# http://unix.stackexchange.com/questions/16101/zsh-search-history-on-up-and-down-keys
#up-line-or-search-prefix () {
  #local CURSOR_before_search=$CURSOR
  #zle up-line-or-search "$LBUFFER"
  #CURSOR=$CURSOR_before_search
#}
#zle -N up-line-or-search-prefix

#down-line-or-search-prefix () {
  #local CURSOR_before_search=$CURSOR
  #zle down-line-or-search "$LBUFFER"
  #CURSOR=$CURSOR_before_search
#}
#zle -N down-line-or-search-prefix


bindkey "^N" history-beginning-search-forward
bindkey "^P" history-beginning-search-backward
#bindkey "^[[A" up-line-or-search-prefix
#bindkey "^[[B" down-line-or-search-prefix

bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

# pretty git log
alias gl='git log --decorate --graph --pretty=my-oneline -50'

# aj
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
