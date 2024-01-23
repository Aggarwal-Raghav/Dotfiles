set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_DATA_HOME $HOME/.local/share
set -x XDG_STATE_HOME $HOME/.local/state

eval "$(/opt/homebrew/bin/brew shellenv)"

source $XDG_CONFIG_HOME/fish/path.fish
source $XDG_CONFIG_HOME/fish/aliases.fish

starship init fish | source
