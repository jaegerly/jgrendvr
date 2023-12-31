#!/bin/sh

#defaults 
export PATH="$PATH:$HOME/.local/bin/scripts:$HOME/.local/bin/scripts/dmenuscripts"
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
export VIDEO="mpv"
export AUDIO="mpd"

# paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}


# cleanup
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo

# clipboard
export CM_SELECTIONS="clipboard"
export CM_MAX_CLIPS=10

#
export _JAVA_AWT_WM_NONREPARENTING=1


[[ -f ~/.bashrc ]] && . ~/.bashrc
