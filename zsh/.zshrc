# alias
alias lg='lazygit'
alias vim='/usr/bin/nvim'
alias vi='/usr/bin/nvim'
alias s='neofetch'
alias ra='ranger'
alias m='neomutt'
alias lock='xscreensaver-command --lock'


export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
# source virtualenvwrapper.sh
export PIPENV_IGNORE_VIRTUALENVS=1 
export XDG_CONFIG_HOME="$HOME/.config"


plugins=(git
         vi-mode
         zsh-autosuggestions
    )



# open in oh my zsh plugins
## zsh with vi-mode
#bindkey -v
#bindkey -M vicmd "h" vi-insert
#bindkey -M vicmd "H" vi-insert-bol
#bindkey -M vicmd "j" vi-backward-char
#bindkey -M vicmd "l" vi-forward-char
#bindkey -M vicmd "J" vi-backward-word
#bindkey -M vicmd "L" vi-forward-word
#bindkey -M vicmd "k" down-line-or-history
#bindkey -M vicmd "i" up-line-or-history
#bindkey -M vicmd "I" up-line-or-history
#bindkey -M vicmd "gg" vi-beginning-of-line
#bindkey -M vicmd "G" vi-end-of-line
#bindkey -M vicmd "u" undo
#bindkey -M vicmd "=" vi-repeat-search
#bindkey -M vicmd "n" vi-forward-word-end
#bindkey -M vicmd "f" history-incremental-search-backward
#bindkey -M vicmd "F" history-incremental-search-forward
#
## 自动改变光标的函数
#function zle-keymap-select {
#	if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
#		echo -ne '\e[1 q'
#	elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
#		echo -ne '\e[5 q'
#  fi
#}
#zle -N zle-keymap-select
#
## Use beam shape cursor on startup.
#echo -ne '\e[5 q'




# GOPATH
export GOROOT=/usr/lib/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/Documents/code/go
export PATH=$PATH:$GOPATH/bin
export GO111MODULE=on
export GOPROXY=https://goproxy.io

# neovim
export EDITOR=nvim
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
source ~/.config/zsh/completion.zsh





## zsh
#                 v
export ZSH="/usr/ring/.oh-my-zsh"

ZSH_THEME="mytheme"

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

