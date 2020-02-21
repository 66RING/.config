# alias
alias lg='lazygit'
alias vim='/usr/bin/nvim'
alias vi='/usr/bin/nvim'
alias s='neofetch'
alias ra='ranger'
alias m='neomutt'

# default
export EDITOR=nvim

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
export PIPENV_IGNORE_VIRTUALENVS=1 
export XDG_CONFIG_HOME="$HOME/.config"

# proxy
export http_proxy="127.0.0.1:8118"
export https_proxy="127.0.0.1:8118"

plugins=(
         vi-mode
         zsh-autosuggestions
    )


# GOPATH
export GOROOT=/usr/lib/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/Documents/code/go
export PATH=$PATH:$GOPATH/bin
export GO111MODULE=on
export GOPROXY=https://goproxy.io

#
# vi-mode 
# reduce delay to 0.1 seconds
export KEYTIMEOUT=1
#
## mysql PATH
#export PATH="/usr/local/mysql/bin:$PATH"
#
## maven
#export M2_HOME=/Users/ring/Documents/apache-maven-3.6.2
#export PATH=$PATH:$M2_HOME/bin



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



## zsh
#              
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="mytheme"

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh


