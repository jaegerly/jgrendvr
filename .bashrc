# 
# jgr rc
# # # #
stty -ixon # disable ctrl-s and ctrl-q
shopt -s autocd # allows to cd into directory by typing name

## prompt 
PS1="\[\033[01;32m\]\w \[\033[00m\]: "



# sourcing
source /home/jgr/.config/shell/alias
source /home/jgr/.config/shell/key-bindings.bash
source /home/jgr/.config/shell/completion.bash
source /home/jgr/.local/bin/scripts/fzfscripts/fzfshellfunctions



# lfcd
LFCD="/home/jgr/.config/lf/lfcd.sh"
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi





