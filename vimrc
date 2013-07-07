syntax on
filetype plugin indent on

set shiftwidth=2 tabstop=2 expandtab
set number ruler
set guifont=Consolas:h13
set scrolloff=2
set hlsearch        " 高亮显示搜索结果
set hidden " switch buffer without saving.
set wildmenu
set wildmode=longest,list:longest
set backupdir=~/.vim/backups/
set mouse=a
"Omni-completion
set completeopt=longest,menu,menuone
" " Change directory to the current buffer when opening files.
"set autochdir

" set cpp coding style.
set cino=N-s,g0.5s,h0.5s,l1,t0,



nmap rc :e ~/.vimrc<CR>
nmap rr :so ~/.vimrc<CR>
nmap ctags :!ctags -R<CR>
nmap <F5> :w<CR>:make<CR>
nmap <F6> :NERDTreeToggle<CR>
nmap <F7> :TagbarToggle<CR>
nmap <leader>cd :cd %:p:h<cr>
nmap <leader>rs :vertical res 81<cr>
nmap <leader>hl :autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))<cr>


"A, switch header and implementation file
nnoremap <silent> <F4> :A<CR>

inoremap <C-F> <C-X><C-F>
inoremap <C-L> <C-X><C-L>
inoremap <S-CR> <END>

" pathogen
execute pathogen#infect()


" colorscheme
syntax enable
set background=light
colorscheme solarized



"CScope
:set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>


"MiniBufferExplorer
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplCheckDupeBufs = 0
"let g:miniBufExplorerMoreThanOne=1

"clang_completion
let g:clang_use_library = 1
let g:clang_library_path = "/usr/lib/"
let g:clang_complete_copen=1
let g:clang_complete_macros=1
let g:clang_auto_select = 1
let g:clang_complete_auto = 0
let g:clang_complete_macros = 1
let g:clang_complete_patterns = 1

set conceallevel=0
set concealcursor=vin
let g:clang_snippets=1
let g:clang_snippets_engine='clang_complete'


" supertab
let g:SuperTabDefaultCompletionType = "<c-x><c-u>"

" nerd tree
let NERDTreeWinSize = 26


"YouCompleteMe
"let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_key_invoke_completion = '<M-Space>'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe_semantic/ycm_extra_conf.py'


"" Vundle settings
"set nocompatible               " be iMproved
"filetype off                   " required!
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()

"Bundle 'gmarik/vundle'
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'scrooloose/nerdtree'
"Bundle 'majutsushi/tagbar'
"Bundle 'fugitive.vim'
"Bundle 'simple-pairs'
"Bundle 'a.vim'
"Bundle 'UltiSnips'
"Bundle 'clang-complete'
"Bundle 'EasyMotion'
"Bundle 'minibufexpl.vim'

"filetype plugin indent on     " required!


" 80 column limit
highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
match OverLength /\%81v.\+/


set whichwrap=<,>,[,],h,l       " 光标从行首和行末时可以跳到另一行去

" Syntastic
"set statusline+=%{SyntasticStatuslineFlag()}
let g:syntastic_cpp_check_header = 0
let g:syntastic_cpp_no_include_search = 1
let g:syntastic_cpp_config_file = '.clang_complete'
"let g:syntastic_cpp_include_dirs = [ 'includes', 'src' ]

set backspace=2
