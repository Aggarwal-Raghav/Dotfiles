set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_STATE_HOME $HOME/.local/state

eval "$(/opt/homebrew/bin/brew shellenv)"

source $XDG_CONFIG_HOME/fish/path.fish
source $XDG_CONFIG_HOME/fish/aliases.fish

starship init fish | source

if command -v zoxide > /dev/null
    zoxide init fish | source
end
