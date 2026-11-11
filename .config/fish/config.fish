if status is-interactive
    # --- Theme (themes/ayu-custom.theme, matches kitty/btop/starship) ---
    fish_config theme choose ayu-custom

    # --- Greeting: only in the top-level shell ---
    function fish_greeting
        test "$SHLVL" -le 1; and not set -q NVIM; and fastfetch
    end

    # --- Env ---
    set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"
    set -gx MANROFFOPT -c
    set -gx FZF_DEFAULT_OPTS "--height=40% --layout=reverse --border=rounded \
        --color=bg+:#1a1f29,fg:#bfbdb6,fg+:#ffffff,hl:#ffb454,hl+:#ffb454 \
        --color=info:#5a6673,prompt:#59c2ff,pointer:#f07178,marker:#aad94c,spinner:#d2a6ff,border:#5a6673"

    # --- eza ---
    set -l eza_opts --group-directories-first --icons
    alias ls "eza $eza_opts"                          # preferred listing
    alias la "eza -a $eza_opts"                       # all files and dirs
    alias ll "eza -l --git $eza_opts"                 # long format
    alias lt "eza -aT --git-ignore -I .git $eza_opts" # tree listing
    alias l. "eza -d $eza_opts .*"                    # only dotfiles

    # --- Abbreviations ---
    abbr -a g git
    abbr -a gs git status
    abbr -a gc git commit
    abbr -a gp git push
    abbr -a v nvim

    # --- Inits ---
    zoxide init fish --cmd cd | source
    starship init fish | source
    enable_transience
end
