# GOPATH
export GOROOT=/usr/lib/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/Documents/code/go
export PATH=$PATH:$GOPATH/bin
export GO111MODULE=on
export GOPROXY=https://goproxy.io


# xorg(arch)
export XAUTHORITY=~/.Xauthority


### fzf
## fzf
#export FZF_DEFAULT_OPTS='--bind ctrl-k:down,ctrl-i:up --preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"'
#export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
#export FZF_COMPLETION_TRIGGER='\'
#export FZF_TMUX_HEIGHT='80%'
#export FZF_PREVIEW_COMMAND='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500'
#source ~/.config/zsh/key-bindings.zsh
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# default items
export EDITOR=nvim
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
export XDG_CONFIG_HOME="$HOME/.config"


#python env
export WORKON_HOME=~/.virtualenvs
# active manually by alias
# source /usr/bin/virtualenvwrapper.sh


