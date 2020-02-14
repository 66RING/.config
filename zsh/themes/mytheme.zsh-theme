autoload -U colors && colors 

PROMPT="%(?:%{$fg_bold[red]%}[%{$fg_bold[magenta]%}%n%{$fg_bold[yellow]%}@%{$fg[green]%}%c%{$fg[cyan]%}]:%{$fg_bold[red]%}[%n@%c])"
PROMPT+="%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) %{$fg[green]%}✔"

