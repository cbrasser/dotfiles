#!/bin/zsh

# catch non-zsh and non-interactive shells
[[ $- == *i* && $ZSH_VERSION ]] && SHELL=/usr/bin/zsh || return 0

# set some defaults
export MANWIDTH=90
export HISTSIZE=10000
export SAVEHIST=10000
export EDITOR="/usr/bin/nvim"

# path to the framework root directory
SIMPL_ZSH_DIR=$HOME/.zsh

# add ~/bin to the path if not already, the -U flag means 'unique'
typeset -U path=($HOME/bin "${path[@]:#}")

# used internally by zsh for loading themes and completions
typeset -U fpath=("$SIMPL_ZSH_DIR/"{completion,themes} $fpath)

# initialize the prompt
autoload -U promptinit && promptinit

# source shell configuration files
for f in "$SIMPL_ZSH_DIR"/{settings,plugins}/*?.zsh; do
    . "$f" 2>/dev/null
done

# uncomment these lines to disable the multi-line prompt
# add user@host, and remove the unicode line-wrap characters

# PROMPT_LNBR1=''
# PROMPT_MULTILINE=''
# PROMPT_USERFMT='%n%f@%F{red}%m'
# PROMPT_ECODE="%(?,,%F{red}%? )"

# load the prompt last
# prompt simpl

alias ml='source ~/dev/venvs/ml/bin/activate'
alias screenfetch='sh ~/.screenfetch.sh'
alias blurwal='/home/clados/.local/bin/blurwal'
alias power='sh ~/.config/rofi/scripts/powermenu.sh'
alias vol='sh ~/.config/rofi/scripts/rofi-audio.sh'
alias wifi='sh ~/.config/rofi/scripts/rofi-wifi-menu.sh'
alias run='rofi -show drun -display-drun Apps -theme ~/.config/rofi/themes/teerqooaz.rasi -normal-window'

# start into fish shell, temporary hack
prompt simpl
