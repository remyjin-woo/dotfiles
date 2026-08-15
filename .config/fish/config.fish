# --- Greeting ---
function fish_greeting
    fastfetch
end

# --- Aliases ---
## Eza
alias ls="eza --color=always --group-directories-first --icons"     # preferred listing
alias la="eza -a --color=always --group-directories-first --icons"  # all files and dirs
alias ll="eza -l --color=always --group-directories-first --icons"  # long format
alias lt="eza -aT --color=always --group-directories-first --icons" # tree listing
alias l.="eza -a | grep -e '^\.'"                                   # show only dotfiles

# --- Inits ---
## Zoxide
zoxide init fish --cmd cd | source

## Starship
starship init fish | source
