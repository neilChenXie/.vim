"""""""""""""""""""""vundle setting""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"""Core"""
Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle, required

"""View"""
Plugin 'scrooloose/nerdtree.git' "NERD file tree
Plugin 'severin-lemaignan/vim-minimap' "mini-map
Plugin 'altercation/vim-colors-solarized.git' "solarized
Plugin 'vim-airline/vim-airline' "beautiful airline
Plugin 'vim-airline/vim-airline-themes' "airline-theme

"""Functionality"""
""No Operation""
Plugin 'scrooloose/syntastic'	"syntastic
Plugin 'scrooloose/nerdcommenter.git' "NERD commenter
Plugin 'tpope/vim-surround' "Surround change
Plugin 'Shougo/neocomplete.vim' "Neocomplete
""Need Operation""

"""Language Support"""
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'jelera/vim-javascript-syntax' " highlights for JS
Plugin 'othree/javascript-libraries-syntax.vim' "JS Lib Syntax
Plugin 'digitaltoad/vim-jade' "node-jade highlight

"Need Operation
"Plugin 'Valloric/YouCompleteMe' "YouCompleteMe
"Plugin 'marijnh/tern_for_vim' " JS autocomplete


call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""end of vundle manage""""""""""""""""""""""""""



"""""""""""""""encoding settings"""""""""""""""""""
"execute pathogen#infect()
"filetype plugin on
set encoding=utf-8
set fileencoding=utf-8
" support Windows Chinese
" set termencoding=gbk
" set langmenu=zh_CN.UTF-8
" language messages zh_CN.UTF-8

"""""""""""""""clipboard related"""""""""""""""""
vmap <C-c> "+y
nmap <C-c> "+yy
vmap <C-v> "+p
imap <C-v> <Esc>"+p<Esc>a
imap <C-c> <Esc>"+yy<Esc>a
""""""""""""""""general setting"""""""""""""""""""
syntax on
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

""""""""""""""""""view module setting""""""""""""""
""NERDtree""
"au VimEnter *  NERDTree
let g:NERDTreeWinSize=15
let NERDTreeShowHidden=1
"map <F8> <Esc>:NERDTree<Cr>
"map <F9> <Esc>:NERDTreeClose<Cr>

""minimap""
map <F2> <Esc>:Minimap<Cr>
map <F3> <Esc>:MinimapClose<Cr>
let g:minimap_highlight='Visual'

""colorscheme""
let g:solarized_termtrans = 1
set background=dark
syntax enable
colorscheme solarized

""airline""
let g:airline#extensions#tabline#enabled = 1
"airline theme"
let &t_Co=256

""winmanager""
let g:winManagerWindowLayout='TagList|FileExplorer'
let g:AutoOpenWinManager = 1
nmap <silent> <F8> :WMToggle<cr>

"""""""""""functionality module setting"""""""""""""
""neocomplete""
let g:neocomplete#enable_at_startup = 1
"Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

""syntastic support C++11""
let g:syntastic_cpp_compiler_options = ' -std=c++0x'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 1 "auto jump to error
"specific checker
let g:syntastic_javascript_jshint_exec='/usr/local/lib/node_modules/jshint/bin/jshint'

""taglist setting""
map <F4> : Tlist<CR>
let g:Tlist_Exit_OnlyWindow = 1
let g:Tlist_Auto_Open = 0
let g:Tlist_Auto_Update = 1
let g:Tlist_Compact_Format = 1
let g:Tlist_File_Fold_Auto_Close=1

""cscope setting""
"set cscopequickfix=s-,c-,d-,i-,t-,e-
"if has("cscope")
"	set csprg=/usr/bin/cscope
"	set csto=1
"	set cst
"	set nocsverb
"	" add any database in current directory
"	if filereadable("cscope.out")
"		cs add cscope.out
"	endif
"	set csverb
"endif

"nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

""phpfolding setting""
map <F5> <Esc>:EnableFastPHPFolds<Cr>
map <F6> <Esc>:EnablePHPFolds<Cr>
map <F7> <Esc>:DisablePHPFolds<Cr>


""javascript folding""
"au FileType javascript call JavaScriptFold()


""""""""""""""""""language support""""""""""""""""""
""ejs support""
"au BufNewFile,BufRead *.ejs set filetype=html

""javascript lib syntax""
"autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
"autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 0 "underscore, Lo-Dash
"autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 0 "backbone
"autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0 "prelude
"autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 0 "angularjs
"autocmd BufReadPre *.js let b:javascript_lib_use_angularui = 0 "angularui
"autocmd BufReadPre *.js let b:javascript_lib_use_angularuirouter = 0 "angularuirouter
"autocmd BufReadPre *.js let b:javascript_lib_use_react = 0 "react
"autocmd BufReadPre *.js let b:javascript_lib_use_flux = 0 "flux
"autocmd BufReadPre *.js let b:javascript_lib_use_requirejs = 0 "requirejs
"autocmd BufReadPre *.js let b:javascript_lib_use_sugar = 0 "sugar
"autocmd BufReadPre *.js let b:javascript_lib_use_jasmine = 0 "jasmine
"autocmd BufReadPre *.js let b:javascript_lib_use_chai = 0 "chai
"autocmd BufReadPre *.js let b:javascript_lib_use_handlebars = 0 "handlebars

"""""""""""""""""""external support""""""""""""""""""
""eclim completion""
"let g:EclimCompletionMethod = 'omnifunc'
