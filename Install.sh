apt install git mc nodejs clang -y
npm i -g vscode-langservers-extracted
npm install -g emmet-ls
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
git clone https://github.com/DinkyTrady/My-Neovim-Setup ~/.config/nvim --depth 1 && nvim
