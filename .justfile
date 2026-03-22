date := `date +%Y-%m-%d`
datetime := `date +%Y-%m-%dT%H:%M:%S`

# list available recipes
default:
    just -l

# stow all
stow:
    stow .

# stow adopt
stow-adopt:
    stow . --adopt

# brew update, upgrade, and cleanup
[confirm("Run brew update, upgrade, and cleanup?")]
brew:
    brew update && brew upgrade && brew cleanup

# search `pkg` in installed brew packages
brew-list pkg:
    brew list | rg "{{pkg}}"

# git add . && git commit -m `msg` && git push
[confirm]
[no-cd]
push msg="manual commit":
    git add -A && git commit -m "{{msg}}" && git push

# open "obsidian" session in zellij
obsidian:
    zellij attach obsidian

# open "dev" session in zellij
dev:
    zellij attach dev

# open zellij welcome page
zellij:
    zellij -l welcome

# launch ttyd
ttyd:
    ttyd \
        -t fontSize=16 \
        -t fontFamily="DepartureMono Nerd Font, Berkeley Mono, monospace" \
        -t cursorStyle=bar \
        -t 'theme={"background":"#282828","foreground":"#ebdbb2","cursor":"#ebdbb2","black":"#282828","red":"#cc241d","green":"#98971a","yellow":"#d79921","blue":"#458588","magenta":"#b16286","cyan":"#689d6a","white":"#a89984","brightBlack":"#928374","brightRed":"#fb4934","brightGreen":"#b8bb26","brightYellow":"#fabd2f","brightBlue":"#83a598","brightMagenta":"#d3869b","brightCyan":"#8ec07c","brightWhite":"#ebdbb2"}' \
        -W zsh -c "zellij attach ttyd"

