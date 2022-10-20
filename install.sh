pkg install mc neovim-nightly nodejs clang -y && npm i -g vscode-langservers-extracted && npm install -g emmet-ls && npm install -g live-server && npm install -g typescript-language-server typescript
sh -c 'curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim +PlugInstall
