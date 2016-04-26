# vim

## Description

1. .vim settings
2. command

## .vim/ setup

need to install vim-gnome to support system clipboard

### Check ENV

* inside vim

	```sh
	# 1 is required, 0 need to follow tutorial under vim-compile
	:echo has('lua')
	```

### Windows

1. put under `C:\User\{username}\vimfiles`
2. **vimrc** `set rtp+=$HOME/vimfiles/bundle/Vundle.vim`


###.vim PATH:

* `~/.vim/` for login user

* `/etc/vim/` for all users

###Steps

1. Get .vim_v2

	```bash
	git clone https://github.com/neilChenXie/.vim_v2.git ~/.vim
	cd ~/.vim
	```

2. Pathogen(Done):

	* run plugin under `/bundle/`

		> solarized

	* [reference](https://github.com/tpope/vim-pathogen)

3. Vundle:

	1. Install

		```bash
		#Linux
		git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
		```

		Then `:PluginInstall` **inside vim**

	2. Plugins(Operation needed only)

		* syntastic

			```bash
			# to check, inside vim
			:SyntasticInfo

			# For javascript
			# need to install node.js, config path
			npm install -g jshint
			```

		* Neocomplete:

			* **Prerequsite**: vim with **lua**

			* Check

				`:echo has("lua")` **inside vim**

4. separated:

	* {prefix}/plugin/:
		* taglist(done)
		* winmanager(done)
	* {prefix}/fplugin/:
		* phpfolding(done)
	* install:
		* cscope

## Command

### control mode

* reload

	`:e`

### search and replace:

* Find each occurrence of 'foo' (in all lines), and replace it with 'bar'.

    `:%s/foo/bar/g`

* Find each occurrence of 'foo' (in the current line only), and replace it with 'bar'.

	`:s/foo/bar/g`

* Change only whole words exactly matching 'foo' to 'bar'; ask for confirmation.

	`:%s/foo/bar/gci`

* [reference](http://vim.wikia.com/wiki/Search_and_replace)
