"""""""""""""""""vundle setting"""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"No More Operation
Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'altercation/vim-colors-solarized.git' "solarized
Plugin 'scrooloose/syntastic'	"syntastic
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'jelera/vim-javascript-syntax' " highlights for JS
Plugin 'scrooloose/nerdtree.git' "NERD file tree
Plugin 'scrooloose/nerdcommenter.git' "NERD commenter
Plugin 'tpope/vim-surround' "Surround change
Plugin 'digitaltoad/vim-jade' "node-jade highlight
Plugin 'severin-lemaignan/vim-minimap' "mini-map
Plugin 'othree/javascript-libraries-syntax.vim' "JS Lib Syntax

"Need Operation
Plugin 'Valloric/YouCompleteMe' "YouCompleteMe
Plugin 'marijnh/tern_for_vim' " JS autocomplete

call vundle#end()            " required
filetype plugin indent on    " required

" end of vundle manage

"""""""""""""""pathogen settings"""""""""""""""""""
execute pathogen#infect()
filetype plugin indent on
filetype plugin on
set encoding=utf-8
set fileencoding=utf-8

"""""""""""""""clipboard related"""""""""""""""""
vmap <C-c> "+y
nmap <C-c> "+yy
vmap <C-v> "+p
imap <C-v> <Esc>"+p<Esc>a
imap <C-c> <Esc>"+yy<Esc>a
""""""""""""""""general setting"""""""""""""""""""
syntax on
au BufNewFile,BufRead *.ejs set filetype=html
set ruler
set nu
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set showmatch
set showcmd
set hlsearch
map <F12> :nohlsearch<CR>
helptags ~/.vim/doc

""""""""""""""""""""NERDtree"""""""""""""""""""""""
"au VimEnter *  NERDTree
let g:NERDTreeWinSize=15
let NERDTreeShowHidden=1
map <F8> <Esc>:NERDTree<Cr>
map <F9> <Esc>:NERDTreeClose<Cr>

""""""""""""""""""colorscheme""""""""""""""""""""""
let g:solarized_termtrans = 1
set background=dark
syntax enable
colorscheme solarized

""""""""""""file for YouCompleteMe"""""""""""""""""
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
let g:ycm_min_num_of_chars_for_completion = 1
"let g:ycm_error_symbol = '>>'
"let g:ycm_warning_symbol = '>*'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_autoclose_preview_window_after_completion = 1

""""""""""""syntastic support C++11""""""""""""""""
let g:syntastic_cpp_compiler_options = ' -std=c++0x'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"my option
let g:syntastic_auto_jump = 1
"specific checker
let g:syntastic_javascript_jshint_exec='/usr/local/lib/node_modules/jshint/bin/jshint'

"""""""""""""taglist setting"""""""""""""""""""""""
map <F4> : Tlist<CR>
let g:Tlist_Exit_OnlyWindow = 1
let g:Tlist_Auto_Open = 0
let g:Tlist_Auto_Update = 1
let g:Tlist_Compact_Format = 1

""""""""""""""cscope setting"""""""""""""""""""""""
set cscopequickfix=s-,c-,d-,i-,t-,e-
if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=1
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
	endif
	set csverb
endif

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"""""""""""""phpfolding setting""""""""""""""""""""
map <F5> <Esc>:EnableFastPHPFolds<Cr>
map <F6> <Esc>:EnablePHPFolds<Cr>
map <F7> <Esc>:DisablePHPFolds<Cr>

""""""""""""" minimap """"""""""""""""""""""""""""
map <F2> <Esc>:Minimap<Cr>
map <F3> <Esc>:MinimapClose<Cr>
let g:minimap_highlight='Visual'

"""""""""""""javascript folding""""""""""""""""""""
"au FileType javascript call JavaScriptFold()

"""""""""""javascript lib syntax""""""""""""""""""
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 0 "underscore, Lo-Dash
autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 0 "backbone
autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0 "prelude
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 0 "angularjs
autocmd BufReadPre *.js let b:javascript_lib_use_angularui = 0 "angularui
autocmd BufReadPre *.js let b:javascript_lib_use_angularuirouter = 0 "angularuirouter
autocmd BufReadPre *.js let b:javascript_lib_use_react = 0 "react
autocmd BufReadPre *.js let b:javascript_lib_use_flux = 0 "flux
autocmd BufReadPre *.js let b:javascript_lib_use_requirejs = 0 "requirejs
autocmd BufReadPre *.js let b:javascript_lib_use_sugar = 0 "sugar
autocmd BufReadPre *.js let b:javascript_lib_use_jasmine = 0 "jasmine
autocmd BufReadPre *.js let b:javascript_lib_use_chai = 0 "chai
autocmd BufReadPre *.js let b:javascript_lib_use_handlebars = 0 "handlebars
