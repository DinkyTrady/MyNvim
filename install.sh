pkg install mc neovim-nightly nodejs clang -y && npm i -g vscode-langservers-extracted && npm install -g emmet-ls && npm install -g live-server && npm install-g javascript typescript-language-server && mv font.ttf ../../.termux/ && termux-reload-settings
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
cd && cd .config/nvim/lua/ && nvim plugins.lua
