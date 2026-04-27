# .zshrc is only for interactive shell sessions
# See also .zshprofile for env variables set at login shell

export ZSHRC="$HOME/.zshrc"
[[ -d ~/.local/bin ]] && path=(~/.local/bin $path)

# History
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt SHARE_HISTORY HIST_IGNORE_DUPS HIST_IGNORE_SPACE HIST_VERIFY EXTENDED_HISTORY
bindkey '^R' history-incremental-search-backward

# Sensible defaults
setopt AUTO_CD EXTENDED_GLOB INTERACTIVE_COMMENTS NO_BEEP
export CLICOLOR=1

# Completion
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Safe paste (replaces omz safe-paste plugin)
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic

# Helper functions
take() { mkdir -p "$1" && cd "$1"; }

export OBSIDIANVAULT="$HOME/Obsidian/obsidian-vault-2025"

# ALIASES
# For a full list of active aliases, run `alias`.
alias zshconfig="$EDITOR $ZSHRC"
alias zshsource="source $ZSHRC"
alias ohmyzsh="$EDITOR $ZSH"
alias ghosttyconfig="$EDITOR $HOME/.config/ghostty/config"
alias most="fc -ln 1 | sort | uniq -c | sort -nr | head -25"
# Replace ls with eza
alias ls="eza -a --icons --hyperlink"
alias l="eza -lah --icons --hyperlink --group-directories-first"
alias la="eza -lAh --icons --hyperlink --group-directories-first"
alias ll="eza -lh --icons --hyperlink --group-directories-first"
alias lg="eza -lah --icons --hyperlink --git --group-directories-first"
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
alias zellijnew="zellij -l welcome"
# git
alias gs="git status -s"
alias gd="git diff"
alias gl="git log --oneline --graph --decorate --all"
alias gc="git commit -m"
# obsidian
alias oh="obsidian help | bat"
alias od="obsidian daily:read"
alias odt="obsidian tasks daily"
alias oda="obsidian daily:append content="
# brew
alias brewlist="(brew list --installed-on-request && brew list --casks -1) | sort"

# MACOS
# cd to iCloud directory
alias icloud='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/'

# Use zsh's vi mode
bindkey -v
export KEYTIMEOUT=1

# Disable auto cd
unsetopt autocd

# Starship prompt
eval "$(starship init zsh)"
# Replace cd with zoxide
eval "$(zoxide init --cmd="cd" zsh)"

