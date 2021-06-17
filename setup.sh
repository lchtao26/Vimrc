# Prepared for linking
now=`date '+%F_%H%M%S'`

touch ~/.vim > /dev/null
touch ~/.config/nvim > /dev/null
mkdir -p ~/.bak/$now > /dev/null

mv ~/.vim ~/.bak/$now/
mv ~/.config/nvim ~/.bak/$now/

# Create nvim init file
ln -sfv `pwd`/dotVim/vimrc `pwd`/dotVim/init.vim
# Link to neovim
ln -sv `pwd`/dotVim ~/.config/nvim
# Link to vim
ln -sv `pwd`/dotVim ~/.vim

# Fetch bundles
git submodule init
git submodule update
