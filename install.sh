pkg install mc neovim-nightly nodejs clang -y && npm i -g vscode-langservers-extracted && npm install -g emmet-ls && npm install -g typescript-language-server && npm install -g live-server
sh -c 'curl -fLo $HOME/.config/nvim/vim-plug/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim -es -u init.lua -i NONE -c "PlugInstall" -c "qa"
