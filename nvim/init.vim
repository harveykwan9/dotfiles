""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""" PLUGINS """""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Vim-Plug plugin stuff
call plug#begin()
    Plug 'preservim/nerdtree'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'dylanaraps/wal.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/syntastic'
    Plug 'yggdroot/indentline'
call plug#end()

" Use the stdio version of OmniSharp-roslyn - this is the default
" Use mono only for unity development
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_use_mono = 1

" Toggle keybind for NerdTree (Ctrl + t)
nnoremap <C-t> :NERDTreeToggle<CR>

" Syntastic configurations
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Indentline colorscheme to use system colorscheme
let g:indentLine_setColors = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""" QULAITY OF LIFE """""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set colorscheme to also use pywal
colorscheme wal

" Tab settings (set to 4 space tabs)
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Restore Cursor after exit (taken straight from [:help restore-cursor])
autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
    \ |   exe "normal! g`\""
    \ | endif

" Adding line numbers
set number
