# Basic auto/tab complete:
autoload -U compinit
compinit
# control with arrow key
zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'


# history
HISTSIZE=2000
SAVEHIST=2000
HISTFILE=~/.cache/.zsh_history
setopt SHARE_HISTORY
# ignore duplicating history
setopt HIST_IGNORE_DUPS
# do not save history when command begin with space
setopt hist_ignore_space


# zsh plugin/theme
autoload -U colors && colors
source $HOME/.config/zsh/plugins/vi-mode/vi-mode.plugin.zsh
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# theme
source $HOME/.config/zsh/themes/mytheme.zsh-theme

# dress up man page
export LESS_TERMCAP_mb=$'\e[6m'          # begin blinking
export LESS_TERMCAP_md=$'\e[34m'         # begin bold
export LESS_TERMCAP_us=$'\e[4;32m'       # begin underline
export LESS_TERMCAP_so=$'\e[1;33;41m'    # begin standout-mode - info box
export LESS_TERMCAP_me=$'\e[m'           # end mode
export LESS_TERMCAP_ue=$'\e[m'           # end underline
export LESS_TERMCAP_se=$'\e[m'           # end standout-mode

