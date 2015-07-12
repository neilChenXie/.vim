
#vim

##Description

##Configuration

###.vim PATH:

* `~/.vim/` for login usr./etc/vim/

* `/etc/vim/` for all users

##Command

###search and replace:

* Find each occurrence of 'foo' (in all lines), and replace it with 'bar'.

    >`:%s/foo/bar/g`

* Find each occurrence of 'foo' (in the current line only), and replace it with 'bar'.

	>`:s/foo/bar/g`

* Change only whole words exactly matching 'foo' to 'bar'; ask for confirmation.

	>`:%s/foo/bar/gci`

##.vim setup

###0. Get .vim_v2

```bash
cd
git clone https://github.com/neilChenXie/.vim_v2.git .vim
cd .vim
```

###1. install vundle(needed) & pathogen(done)

```bash
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

###2. Pathogen:

* run plugin under `/bundle/`

	* solarized

* [reference](https://github.com/tpope/vim-pathogen)

###3. Vundle:

* solarized

* NERDtree

* syntastic

	* **:SyntasticInfo** to check

	* for javascript

		>need to install node.js, config path
		```bash
		npm install -g jshint
		```

* YouCompleteMe:
	* install llvm and clang:
		>Ubuntu relate [link](http://llvm.org/apt/)
		add `llvm.list` to `/etc/apt/source.list.d/`
		```bash
		ln -s /usr/bin/clang /usr/bin/clang-3.6
		ln -s /usr/bin/clang++ /usr/bin/clang++-3.6
		```

	* ./install --clang-completer

* tern_for_vim:

	* `npm install`

* vim-cpp-enhanced

* vim-javascript-syntax

* [reference](https://github.com/VundleVim/Vundle.vim)

###4. separated:

* taglist(done):

	* ~/.vim/plugin/taglist.vim  

	* ~/.vim/doc/taglist.txt

##vimrc
