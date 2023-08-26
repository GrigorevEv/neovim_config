Устанавливаем необходимые пакеты:
```
sudo apt update
sudo apt install ninja-build gettext cmake unzip curl xsel ripgrep
```

Установливаем nvim из исходников:
```
cd
mkdir .packs
git clone https://github.com/neovim/neovim
cd neovim
git checkout v0.9.1
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/.packs"
make install
cd
echo 'export PATH="$HOME/.packs/bin:$PATH"' >> .zshrc
echo 'alias vim="nvim"' >> .zshrc
source .zshrc
rm -rf neovim
```
Устанавливаем конфигурацию и необходимые пакеты:
```
git clone https://github.com/GrigorevEv/neovim_config ~/.config/nvim
sudo apt install ninja-build gettext cmake unzip curl xsel ripgrep
pip3 install pynvim ruff pyright
```
