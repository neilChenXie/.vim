
#vim

##Description

This document include my how to setup .vim configuration and experience of using vim.

##.vim/ setup

###.vim PATH:

* `~/.vim/` for login usr./etc/vim/

* `/etc/vim/` for all users

###Steps

1. Get .vim_v2

	```bash
	git clone https://github.com/neilChenXie/.vim_v2.git ~/.vim
	cd ~/.vim
	```

2. Install vundle(needed) & pathogen(done)

	```bash
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	```

3. Pathogen:

	* run plugin under `/bundle/`

		> solarized

	* [reference](https://github.com/tpope/vim-pathogen)

3. Vundle:

	* solarized

	* NERDtree

	* syntastic

		>**:SyntasticInfo** to check

		>For javascript

		>>need to install node.js, config path
		```bash
		npm install -g jshint
		```

	* YouCompleteMe:
		>install llvm and clang:

		>Ubuntu relate [link](http://llvm.org/apt/)
		```bash
		ln -s /usr/bin/clang /usr/bin/clang-3.6
		ln -s /usr/bin/clang++ /usr/bin/clang++-3.6
		```

		>`./install.sh --clang-completer` under `~/.vim/bundle/YouCompleteMe/`

	* tern_for_vim:

		>`npm install` under `~/.vim/bundle/tern_for_vim/`

	* vim-cpp-enhanced

	* vim-javascript-syntax

		> [reference](https://github.com/VundleVim/Vundle.vim)

4. separated:

	* taglist(done):

		> ~/.vim/plugin/taglist.vim<br>
		~/.vim/doc/taglist.txt<br>
		[reference](http://www.vim.org/scripts/script.php?script_id=273)

###vimrc

##Command

###search and replace:

* Find each occurrence of 'foo' (in all lines), and replace it with 'bar'.

    >`:%s/foo/bar/g`

* Find each occurrence of 'foo' (in the current line only), and replace it with 'bar'.

	>`:s/foo/bar/g`

* Change only whole words exactly matching 'foo' to 'bar'; ask for confirmation.

	>`:%s/foo/bar/gci`
