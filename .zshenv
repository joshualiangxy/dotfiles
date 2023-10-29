# rust and cargo
source "$HOME/.cargo/env"

# PATH changes
export PATH=$PATH:$HOME/.local/share/bob/nvim-bin
export PATH=$PATH:$HOME/.config/lua-language-server/bin
export PATH="${PATH:+${PATH}:}$HOME/.fzf/bin"

# EDITOR changes
export EDITOR=nvim

# Alias definitions
source $HOME/.custom_aliases

# starship config
export STARSHIP_CONFIG=$HOME/.config/starship/config.toml

# What fzf uses to find files
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'

export LESS='--use-color --incsearch --ignore-case --RAW-CONTROL-CHARS'

