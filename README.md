# Dotfiles setup on my machine

### Install with stow:
```bash
stow .
```

### Homebrew installation:
```bash
# Leaving a machine
brew leaves > leaves.txt

# Fresh installation
xargs brew install < leaves.txt
```

### Post-Install Manual Steps:
After stowing and installing Homebrew packages, you need to manually bootstrap the Fish plugin manager (Fisher):

```fish
# Install Fisher and fetch all plugins listed in fish_plugins
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher update
```

### Tmux Plugin Manager (TPM):
You must manually clone TPM before your Tmux configuration will work:
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
*After opening tmux, press `Prefix + I` to install all your plugins.*

### Neovim Submodule:
If you forgot to clone this repository with the `--recursive` flag, your `nvim` folder will be empty. To pull down your Neovim configuration:
```bash
git submodule update --init --recursive
```
