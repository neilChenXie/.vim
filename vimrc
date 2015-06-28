"""""""""""""""""vundle setting"""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"plugin for vundle to install and manage
Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'altercation/vim-colors-solarized.git' "solarized
Plugin 'scrooloose/syntastic'	"syntastic
Plugin 'Valloric/YouCompleteMe' "YouCompleteMe
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'marijnh/tern_for_vim' " JS autocomplete
Plugin 'jelera/vim-javascript-syntax' " highlights for JS
Plugin 'scrooloose/nerdtree.git' "NERD file tree

call vundle#end()            " required
filetype plugin indent on    " required

" end of vundle manage

"""""""""""""""pathogen settings"""""""""""""""""""
execute pathogen#infect()
filetype plugin indent on
filetype plugin on

"""""""""""""""general settings""""""""""""""""""""
syntax on
set ruler
set nu
set autoindent
set smartindent 
set shiftwidth=4
set tabstop=4
set showmatch
set showcmd
"helptags ~/.vim/doc

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
map <F3> : Tlist<CR>
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

"""""""""""""javascript folding""""""""""""""""""""
"au FileType javascript call JavaScriptFold()
