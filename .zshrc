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
# ZSH_THEME="mh"
ZSH_THEME="minimal"
# ZSH_THEME="muse"

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
COMPLETION_WAITING_DOTS="true"

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
export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/texbin:/projects/nn/joeraii/local_libraries/bin/:/public/linux/bin/:/lusr/git/bin/:~/Desktop/metamx/unix-common/bin/

# for rabbitmiq
export PATH=$PATH:/usr/local/sbin

# for julia
export DYLD_LIBRARY_PATH=/usr/local/gfortran/lib


setopt autolist
unsetopt menucomplete
unsetopt correct_all


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
