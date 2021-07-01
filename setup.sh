# Prepared for linking
now=`date '+%F_%H%M%S'`

touch ~/.vim > /dev/null
mkdir -p ~/.bak/$now > /dev/null

echo '- Backup vim configuration'
mv -v ~/.vim ~/.bak/$now/

echo '\n'
echo '- Create symbolic link'
# Link to vim
ln -sv `pwd`/dotVim ~/.vim

echo '\n'
echo '- Install plugins...'
vim -es -u dotVim/pluginrc -i NONE -c "PlugInstall" -c "qa"

echo '\n'
echo '- Setup complete!'

