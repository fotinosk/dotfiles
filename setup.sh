# Set up zshrc - oh-my-zsh is required
stow zsh

# Set up neovim - for it to not interfere with iterm2 we need to do some trickery
mkdir -p ~/.config/nvim
stow nvim -t ~/.config/nvim
