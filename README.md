# vim

## Description

.vim settings

## Install

1 Get .vim_v2

```bash
git clone https://github.com/neilChenXie/.vim_v2.git ~/.vim
cd ~/.vim
```


2 Install Vundle:


```bash
#Linux
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

3 Install Plugins

```bash
vim
# no problem with some warnings.
## this is because, plugins are not installed yet

# Inside vim
:PluginInstall
```

### Non-vundle & installed app list

`~/.vim/plugin/`:

* taglist(done)
* winmanager(done)

`~/.vim/fplugin/`:

* phpfolding(done)

`~/.vim/syntax/` ,`~/.vim/indent/` & `~/.vim/filetype.vim`:

* nginx

## Other Install needed

> some software are needed

cscope & ctags

```bash
sudo apt-get install ctags cscope
#centos use yum
```

vim-gnome

> need it to support system clipboard


## Check Install


Syntastic

> `:SyntasticInfo` **inside vim**


Neocomplete:

1 **need** vim with **lua**

> `:echo has("lua")` **inside vim**. return 1 needed

> for `lua` support. **Mac** use **homebrew** to reinstall `vim`, there are plenty of tutorials.

[Install vim with source code](http://chen-node.com/ChenLinux/source code/vim)

## Experience

### `vimrc` PATH:

`~/.vim/`

> for single user

`/etc/vim/` 

> for all users

### Windows

1. put under `C:\User\{username}\vimfiles`
2. install vundle with windows
3. revise **vimrc** 

> `set rtp+=$HOME/vimfiles/bundle/Vundle.vim`
