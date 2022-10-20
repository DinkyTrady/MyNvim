pkg install mc neovim-nightly nodejs clang -y && npm install -g live-server
sh -c 'curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim -es -u init.lua -i NONE -c "PlugInstall" -c "qa"
