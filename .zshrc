# ***STANDARD CONFIG***
# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

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
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim $ZSH"
alias most-used="history | awk '{print $2}' | sort | uniq -c | sort -nr | head -10"
# Replace ls with eza
alias ls="eza -a --icons --hyperlink"
alias l="eza -lah --icons --hyperlink"
alias la="eza -lAh --icons --hyperlink"
alias ll="eza -lh --icons --hyperlink"
alias lg="eza -lah --icons --hyperlink --git"

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

