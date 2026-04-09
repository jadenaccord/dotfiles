# Dotfiles

Dotfiles for cross-platform use, with `stow`.

## Setup

```sh
cd ~/.dotfiles
just stow        # symlink all configs to $HOME
just cron        # install crontab
```

Use `just stow-adopt` when setting up on a machine that already has existing config files — it pulls them into the repo first.

## Commands

```sh
just             # list all recipes
just stow        # stow all dotfiles
just stow-adopt  # stow with --adopt (import existing files)
just brew        # brew update && upgrade && cleanup
just push [msg]  # git add -A && commit && push
just cron        # install ~/.crontab
```

## Tree

```
.
├── .config
│   ├── bat/            # bat (cat replacement) config
│   ├── ghostty/        # Ghostty terminal config
│   ├── nvim/           # Neovim config (Lua, vim-pack)
│   │   ├── init.lua
│   │   ├── lsp/        # LSP server configs
│   │   ├── lua/config/ # options.lua, keymaps.lua
│   │   └── plugin/     # mini.lua, treesitter.lua, lsp.lua
│   ├── tmux/           # tmux config
│   ├── yazi/           # yazi file manager config
│   ├── zed/            # Zed editor settings
│   └── zellij/         # Zellij multiplexer config + layouts
├── .crontab            # crontab (install with: just cron)
├── .gitconfig
├── .justfile           # task runner recipes
├── .stow-local-ignore  # excludes: .git, .DS_Store, README.md
├── .vimrc
├── .zprofile           # login shell: PATH, EDITOR, env vars
├── .zshrc              # interactive shell: oh-my-zsh, aliases, keybindings
└── packages.txt        # reference list of brew packages
```
