# Dotfiles

My personal dotfiles, themed with a custom ayu-dark.

All configs expect a **Nerd Font** (FiraCode Nerd Font) for icons.

## Configs & Dependencies

- **btop**: nothing extra
- **fastfetch**: a terminal with kitty image support (kitty, ghostty) for the logo
- **fish**:
  - `fisher` plugins: `fisher update`
  - `starship` prompt
  - `zoxide` replaces cd
  - `eza` replaces ls
  - `fastfetch` greeting
  - `bat` man pager
  - `fzf`, `fd` for fzf.fish
  - `rustup` and `uv` (their env files are sourced in `conf.d` or remove their files)
- **ghostty**: FiraCode Nerd Font
- **kitty**: FiraCode Nerd Font
- **niri**:
  - `noctalia` shell
  - `ghostty`, `firefox`, `nautilus` on keybinds
  - `capitaine-cursors` cursor theme
- **nvim**: Neovim >= 0.12
  - `git`, `curl`, `tar`, `unzip`
  - `tree-sitter` CLI and a C compiler
  - `ripgrep`, `fd`, `fzf` for fzf-lua
  - `node`/`npm` and `python3` for Mason to install LSPs and formatters
  - `rustup` with `rust-analyzer` and `rustfmt` (not installed by Mason)
- **starship**: nothing extra

Plugins, LSPs and parsers install themselves on the first `nvim` launch.
