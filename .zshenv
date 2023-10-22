# rust and cargo
source "$HOME/.cargo/env"

# PATH changes
export PATH=$PATH:$HOME/.local/share/bob/nvim-bin
export PATH=$PATH:$HOME/.config/lua-language-server/bin
export PATH="${PATH:+${PATH}:}/home/joshua/.fzf/bin"

# EDITOR changes
export EDITOR=nvim

# Alias definitions
source ~/.custom_aliases

# starship config
export STARSHIP_CONFIG=$HOME/.config/starship/config.toml

export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'

