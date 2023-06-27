# zsh binds


# delete key
bindkey '^[[3~' delete-char
# alt+backspace delete delete word before and after
bindkey '^[^?' backward-kill-word
bindkey '^[[3;3~' kill-word
# alt+enter execute autosuggestion
bindkey '^[^M' autosuggest-execute
# ctrl+b/w move word by word backwardforward
bindkey '^b' backward-word
bindkey '^w' forward-word
# ctrl+a beginning end
bindkey "^a" beginning-of-line
bindkey "^e" end-of-line
# kill line
bindkey "^q" backward-kill-line
bindkey "^s" insert-sudo


# small functions
insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo



