pkg install neovim-nightly mc nodejs clang -y
npm i -g vscode-langservers-extracted emmet-ls live-server
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
git clone https://github.com/DinkyTrady/My-Neovim-Setup ~/.config/nvim --depth 1 && nvim :PlugInstall
