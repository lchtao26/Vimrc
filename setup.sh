git submodule init
git submodule update

ln -s `pwd`/dotVim/vimrc `pwd`/dotVim/init.vim          # Create nvim init file
ln -s `pwd`/dotVim ~/.vim          # Link to vim
ln -s `pwd`/dotVim ~/.config/nvim  # Link to neovim
