export KEYTIMEOUT=1

# Updates editor information when the keymap changes.
function zle-keymap-select() {
  # update keymap variable for the prompt
  VI_KEYMAP=$KEYMAP

  zle reset-prompt
  zle -R
}

zle -N zle-keymap-select

function vi-accept-line() {
  VI_KEYMAP=main
  zle accept-line
}

zle -N vi-accept-line


bindkey -v

# use custom accept-line widget to update $VI_KEYMAP
bindkey -M vicmd '^J' vi-accept-line
bindkey -M vicmd '^M' vi-accept-line

# allow v to edit the command line (standard behaviour)
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd 'v' edit-command-line

# allow ctrl-h, ctrl-w, ctrl-? for char and word deletion (standard behaviour)
bindkey '^?' backward-delete-char
bindkey '^w' backward-kill-word

# allow ctrl-a and ctrl-e to move to beginning/end of line
bindkey '^j' beginning-of-line
bindkey '^a' beginning-of-line
bindkey '^l' end-of-line
bindkey '^e' end-of-line

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





# back up
## Updates editor information when the keymap changes.
#function zle-keymap-select() {
#  # update keymap variable for the prompt
#  VI_KEYMAP=$KEYMAP
#
#  zle reset-prompt
#  zle -R
#}
#
#zle -N zle-keymap-select
#
#function vi-accept-line() {
#  VI_KEYMAP=main
#  zle accept-line
#}
#
#zle -N vi-accept-line
#
#
#bindkey -v
#
## use custom accept-line widget to update $VI_KEYMAP
#bindkey -M vicmd '^J' vi-accept-line
#bindkey -M vicmd '^M' vi-accept-line
#
## allow v to edit the command line (standard behaviour)
#autoload -Uz edit-command-line
#zle -N edit-command-line
#bindkey -M vicmd 'v' edit-command-line
#
## allow ctrl-p, ctrl-n for navigate history (standard behaviour)
#bindkey '^P' up-history
#bindkey '^N' down-history
#
## allow ctrl-h, ctrl-w, ctrl-? for char and word deletion (standard behaviour)
#bindkey '^?' backward-delete-char
#bindkey '^h' backward-delete-char
#bindkey '^w' backward-kill-word
#
## allow ctrl-r and ctrl-s to search the history
#bindkey '^r' history-incremental-search-backward
#bindkey '^s' history-incremental-search-forward
#
# allow ctrl-a and ctrl-e to move to beginning/end of line
#bindkey '^a' beginning-of-line
#bindkey '^e' end-of-line
#
## if mode indicator wasn't setup by theme, define default
#if [[ "$MODE_INDICATOR" == "" ]]; then
#  MODE_INDICATOR="%{$fg_bold[red]%}<%{$fg[red]%}<<%{$reset_color%}"
#fi
#
#function vi_mode_prompt_info() {
#  echo "${${VI_KEYMAP/vicmd/$MODE_INDICATOR}/(main|viins)/}"
#}
#
## define right prompt, if it wasn't defined by a theme
#if [[ "$RPS1" == "" && "$RPROMPT" == "" ]]; then
#  RPS1='$(vi_mode_prompt_info)'
#fi
