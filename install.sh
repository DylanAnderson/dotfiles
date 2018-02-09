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
# Get the prezto files, copy various dotfiles
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
      ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
# Change shell to zsh
chsh -s $(which zsh)
rm -f ~/.zshrc
stow zsh
