
.vim_v2
=======

Installation
------------

###1. install vundle(needed) & pathogen(done)
###2. based on pathogen:
###3. based on vundle:
####solarized
####NERDtree
####syntastic
		need to install node.js and npm install jshint, config path
		use SyntasticInfo to check and search and solve
####YouCompleteMe: 
		install llvm and clang: add `llvm.list` to `/etc/apt/source.list.d/`<br>
			ln -s /usr/bin/clang /usr/bin/clang-3.6
			ln -s /usr/bin/clang++ /usr/bin/clang++-3.6
		./install --clang-completer
####tern_for_vim: 
		npm install
####vim-cpp-enhanced
####vim-javascript-syntax

###4. separated:
####taglist(done): 
		~/.vim/plugin/taglist.vim  
		~/.vim/doc/taglist.txt

vimrc
-----
####Vundle
	configuration
####Pathogen
	configuration
####General
	configuration
####plugin
	plugin specified configuration
