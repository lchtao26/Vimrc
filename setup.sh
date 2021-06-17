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

echo '\n'
echo '- Install plugins'
vim -es -u vimrc -i NONE -c "PlugInstall" -c "qa"

echo '\n'
echo '- Setup complete!'

