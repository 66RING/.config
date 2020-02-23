# alias
alias lg='lazygit'
alias vim='/usr/bin/nvim'
alias vi='/usr/bin/nvim'
alias s='neofetch'
alias ra='ranger'
alias m='neomutt'
alias grep='grep --color'


# default
export EDITOR=nvim
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
export XDG_CONFIG_HOME="$HOME/.config"


#pipenv
export PIPENV_IGNORE_VIRTUALENVS=1 


# proxy
export http_proxy="127.0.0.1:8118"
export https_proxy="127.0.0.1:8118"


# Basic auto/tab complete:
autoload -U compinit
compinit
# control with arrow key
zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/.zsh_history
# ignore duplicating history
setopt HIST_IGNORE_DUPS


# GOPATH
export GOROOT=/usr/lib/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/Documents/code/go
export PATH=$PATH:$GOPATH/bin
export GO111MODULE=on
export GOPROXY=https://goproxy.io


# xorg(arch)
export XAUTHORITY=~/.Xauthority


## fzf
# fzf
export FZF_DEFAULT_OPTS='--bind ctrl-k:down,ctrl-i:up --preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"'
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_COMPLETION_TRIGGER='\'
export FZF_TMUX_HEIGHT='80%'
export FZF_PREVIEW_COMMAND='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500'
source ~/.config/zsh/key-bindings.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# zsh plugin/theme
autoload -U colors && colors
source $HOME/.config/zsh/themes/mytheme.zsh-theme
source $HOME/.config/zsh/plugins/vi-mode/vi-mode.plugin.zsh
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


