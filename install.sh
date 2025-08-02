#!/bin/bash
set -e

echo "Installing Zsh + autosuggestions + highlighting locally..."

# 1. Install zsh locally
cd "$(dirname "$0")"
ZSH_INSTALL="$HOME/.local/zsh"
mkdir -p "$ZSH_INSTALL"

if [ ! -d "$ZSH_INSTALL/bin" ]; then
  git clone https://github.com/zsh-users/zsh zsh-src
  cd zsh-src
  ./Util/preconfig
  ./configure --prefix="$ZSH_INSTALL"
  make && make install
  cd ..
  rm -rf zsh-src
fi

# 2. Symlink .zshrc
ln -sf "$(pwd)/zshrc" "$HOME/.zshrc"

# 3. Clone plugins if missing
mkdir -p plugins
cd plugins

[ ! -d zsh-autosuggestions ] && git clone https://github.com/zsh-users/zsh-autosuggestions.git
[ ! -d zsh-syntax-highlighting ] && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

cd ..

echo "Done! Starting Zsh..."
exec "$ZSH_INSTALL/bin/zsh"
