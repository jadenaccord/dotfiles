# Dotfiles

My dotfiles, managed with `stow`. Mainly for macOS, but mostly compatible with Linux.

## Setup

```
just stow        # symlink all configs to `$HOME`
just stow-adopt  # like `stow` but adopts existing files
just cron        # install `.crontab`
just -l          # list all available recipes
```

