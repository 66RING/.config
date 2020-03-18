# Basic auto/tab complete:
autoload -U compinit
compinit
# control with arrow key
zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/.zsh_history
setopt SHARE_HISTORY
# ignore duplicating history
setopt HIST_IGNORE_DUPS



# zsh plugin/theme
autoload -U colors && colors
source $HOME/.config/zsh/themes/mytheme.zsh-theme
source $HOME/.config/zsh/plugins/vi-mode/vi-mode.plugin.zsh
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


