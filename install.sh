#!/bin/zsh
# vim
echo "Installing vim files..."
stow vim
# vim +PlugInstall

# tmux
echo "Installing tmux files..."
stow tmux

# zsh
echo "Installing zsh files..."
# Change shell to zsh
chsh -s $(which zsh)
rm -f ~/.zshrc
stow zsh
