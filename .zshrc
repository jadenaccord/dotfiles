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

# Import env variables
source $HOME/.exportrc
# Import aliases
source $HOME/.aliasrc
# Import functions
source $HOME/.functionrc

# Use zsh's vi mode
bindkey -v
export KEYTIMEOUT=1

# Starship prompt
eval "$(starship init zsh)"
# Replace cd with zoxide
eval "$(zoxide init --cmd="cd" zsh)"

