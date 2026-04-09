# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Dotfiles for cross-platform use, managed with GNU Stow. The repo lives at `$HOME/.dotfiles/` and `stow .` symlinks everything (except `.git`, `.DS_Store`, and `README.md`) to `$HOME`.

## Common Commands

Uses `just` as a task runner. Run `just` to list all recipes.

```sh
just stow          # symlink all dotfiles to $HOME via stow
just stow-adopt    # stow with --adopt (pulls existing $HOME files into repo)
just push [msg]    # git add -A && commit && push (prompts for confirmation)
just brew          # brew update && upgrade && cleanup (prompts for confirmation)
just cron          # install ~/.crontab via crontab
```

## Structure

Everything at the repo root gets stowed to `$HOME`. Key configs:

- **`.zshrc` / `.zprofile`** — Zsh config. `.zprofile` sets env vars (PATH, EDITOR, XDG_CONFIG_HOME); `.zshrc` is interactive-only (oh-my-zsh, aliases, keybindings, zoxide init).
- **`.config/nvim/`** — Neovim config in Lua. `init.lua` loads `config.options` and `config.keymaps`. Uses [vim-pack](https://github.com/marcelbeumer/nvim-pack) as the plugin manager (lock file: `nvim-pack-lock.json`). Plugin configs live in `plugin/` (mini.lua, treesitter.lua, lsp.lua); LSP server configs are in `lsp/`.
- **`.config/ghostty/config`** — Ghostty terminal config (font, theme, macOS options).
- **`.config/tmux/tmux.conf`** — tmux config.
- **`.config/zellij/`** — Zellij multiplexer config (`config.kdl`) and layouts.
- **`.oh-my-zsh/`** — oh-my-zsh installation tracked in repo.
- **`packages.txt`** — Reference list of brew packages to install manually.
- **`.stow-local-ignore`** — Files stow skips: `.git`, `.DS_Store`, `README.md`.

## Stow Behavior

Stow creates symlinks mirroring the repo structure under `$HOME`. Adding a new config file at `.config/foo/bar` in this repo will symlink to `~/.config/foo/bar`. Run `just stow` after adding new files.

The `--adopt` flag (`just stow-adopt`) moves existing `$HOME` files into the repo and replaces them with symlinks — useful when setting up a new machine that already has config files.
