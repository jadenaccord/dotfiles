# ***STANDARD CONFIG***
# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSHRC="$HOME/.zshrc"

# Set zsh theme
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Load plugins
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins
# safe-paste: disables automatically running pasted commands
plugins=(safe-paste)

source $ZSH/oh-my-zsh.sh

# ***USER CONFIG***
# .zshrc is only for interactive shell sessions
# See also .zshprofile for env variables set at login shell

# ALIASES
# For a full list of active aliases, run `alias`.
alias zshconfig="$EDITOR $ZSHRC"
alias zshsource="source $ZSHRC"
alias ohmyzsh="$EDITOR $ZSH"
alias ghosttyconfig="$EDITOR $HOME/.config/ghostty/config"
alias most="fc -ln 1 | sort | uniq -c | sort -nr | head -25"
# Replace ls with eza
alias ls="eza -a --icons --hyperlink"
alias l="eza -lah --icons --hyperlink"
alias la="eza -lAh --icons --hyperlink"
alias ll="eza -lh --icons --hyperlink"
alias lg="eza -lah --icons --hyperlink --git"
alias lf="eza -lahf --icons --hyperlink"
alias ld="eza -lahD --icons --hyperlink"
# zoxide
alias z="zoxide query"
# fzf
alias fff="fzf --multi --preview 'bat --color=always {}' --style minimal --bind 'enter:become(nvim {+})'"
alias ffd='cd "$(find . -type d | fzf --preview '"'"'ls {}'"'"' --style minimal)"'
alias ffh='print -z $(fc -lnr 1 | awk '\''!seen[$0]++'\'' | fzf)'
alias f="fff"
# zellij
alias newzellij="zellij -l welcome"

# MACOS
# List packages installed manually with brew
alias brew-list-installed="(brew list --installed-on-request && brew list --casks -1) | sort"
# cd to iCloud directory
alias icloud='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/'

# Use zsh's vi mode
bindkey -v
export KEYTIMEOUT=1

# Disable auto cd
unsetopt autocd

# Replace cd with zoxide
eval "$(zoxide init --cmd="cd" zsh)"

