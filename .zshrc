
# Enable colors and prompt
autoload -U colors && colors	
source ~/.config/zsh/common.zsh-theme
source ~/.config/shell/unbind.zsh


# options
setopt autocd
stty -ixon -ixoff
setopt interactive_comments
zle_highlight=('paste:none')
setopt complete_aliases

# history
HISTSIZE=50000
SAVEHIST=50000
HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/zsh/history"

# sourcing
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/alias" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/alias"
source ~/.config/lf/lfcd.sh
source ~/.config/shell/bindkey.zsh
source ~/.config/shell/completion.zsh
source ~/.config/shell/key-bindings.zsh
source ~/.local/bin/scripts/fzfscripts/fzfshellfunctions

# basic auto/tab complete
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)	


# plugins
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


# random
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"


# syntaxhl last
source ~/.config/zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null
