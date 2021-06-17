# Prepared for linking
now=`date '+%F_%H%M%S'`

touch ~/.vim > /dev/null
touch ~/.config/nvim > /dev/null
mkdir -p ~/.bak/$now > /dev/null

echo '- Backup vim configuration'
mv -v ~/.vim ~/.bak/$now/
mv -v ~/.config/nvim ~/.bak/$now/

echo '\n'
echo '- Create symbolic link'
# Create nvim init file
ln -sfv `pwd`/dotVim/vimrc `pwd`/dotVim/init.vim
# Link to neovim
ln -sv `pwd`/dotVim ~/.config/nvim
# Link to vim
ln -sv `pwd`/dotVim ~/.vim

# Fetch bundles
git submodule init
git submodule update

echo '\n'
echo '- Setup complete!'

