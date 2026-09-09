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

### Terminal Tips & Tricks:

Because this setup uses `bat` for code highlighting and enables `--mouse` scrolling in `less`, standard mouse copying behaves a bit differently.

* **Selecting text inside `less` or `bat`:** By default, mouse clicks are captured for scrolling. To highlight and copy text normally, hold **`Shift`** while clicking and dragging.
* **Ignoring line numbers:** To copy code without accidentally copying `bat`'s line numbers or grid lines, hold the **`Option (⌥)`** key while dragging to perform a rectangular block selection.
* **Combining both:** Hold **`Shift + Option (⌥)`** while dragging to perform a rectangular selection inside a `bat`/`less` window!
