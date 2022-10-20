pkg install lsd mc neovim-nightly nodejs clang -y && npm i -g vscode-langservers-extracted && npm install -g emmet-ls && npm install -g live-server && npm install -g javascript typescript-language-server
sh -c 'curl -fLo $HOME/.config/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
cd && cd .config/nvim/ && nvim init.lua
