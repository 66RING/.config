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



plugins=(git
         vi-mode
    )



# zsh with vi-mode
bindkey -v
bindkey -M vicmd "h" vi-insert
bindkey -M vicmd "H" vi-insert-bol
bindkey -M vicmd "j" vi-backward-char
bindkey -M vicmd "l" vi-forward-char
bindkey -M vicmd "J" vi-backward-word
bindkey -M vicmd "L" vi-forward-word
bindkey -M vicmd "k" down-line-or-history
bindkey -M vicmd "i" up-line-or-history
bindkey -M vicmd "I" up-line-or-history
bindkey -M vicmd "gg" vi-beginning-of-line
bindkey -M vicmd "G" vi-end-of-line
bindkey -M vicmd "u" undo
bindkey -M vicmd "=" vi-repeat-search
bindkey -M vicmd "n" vi-forward-word-end
bindkey -M vicmd "f" history-incremental-search-backward
bindkey -M vicmd "F" history-incremental-search-forward

# 自动改变光标的函数
function zle-keymap-select {
	if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
		echo -ne '\e[1 q'
	elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
		echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'




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





# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/usr/ring/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
