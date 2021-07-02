# Vimrc

Vim config setting, supporting code completion, snippets, linting, and formatting.

## Usage

### Install

```bash
git clone https://gitee.com/lchtao26/vimrc.git
cd vimrc
sh ./setup.sh
```

### Setting

- Edit `vimrc` file if you want to change basic settings or vim keymappings.
- Edit `pluginrc` file if you want to enable/disabled or install/uninstall plugins. It is using [vim-plug](https://github.com/junegunn/vim-plug) as plugin manager.
- Edit `after/plugin/*.vim` file to change the config for specific plugin. (eg: `after/plugin/coc.vim` is the configuration for [coc](https://github.com/neoclide/coc.nvim))

## Requirement 

- Vim8.0
- git
- nodeJS
