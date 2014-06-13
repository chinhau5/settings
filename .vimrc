execute pathogen#infect()

set mouse=a
set number 
set hlsearch
set incsearch
set ignorecase
set backspace=2
set showcmd
set ruler
set showmatch
set t_Co=256
set background=dark
colorscheme zenburn 
filetype plugin indent on
syntax enable 

"cscope
if has("cscope")
	set csto=0
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
	    cs add cscope.out
	" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
	    cs add $CSCOPE_DB
	endif
	set csverb
endif

"variables
let g:ctrlp_extensions = ['tag']
let g:ctrlp_cmd = 'CtrlPTag'
"let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_allow_changing_updatetime = 0
"let g:ycm_add_preview_to_completeopt = 1
"let g:ycm_show_diagnostics_ui = 0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0

"key maps
nmap <F8> :TagbarToggle <CR>
nmap <F7> :NERDTreeToggle <CR>
nmap \q :nohlsearch <CR>
nmap \h :cs find c <cword> <CR>
nnoremap % v%
nnoremap * :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
vmap \\ :s/\(.*\)/\/*\1*\//g <CR>
vmap \| :s/\/\*\(.*\)\*\//\1/ <CR>
