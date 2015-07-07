set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on

set nu
syntax on
set history=1000
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4

" highlight brace match
set showmatch
set incsearch
set hlsearch

set nobackup

set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
set langmenu=zh_CN.UTF-8

set completeopt=preview,menu

filetype on

colorscheme desert

" NERDTree
let NERDTreeWinSize=20

" vim-javascript
set regexpengine=1
let b:javascript_fold=0

" ctrlp.vim
let g:ctrlp_map = '..'
let g:ctrlp_open_multiple_files = 'v' 
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.git']
let g:ctrlp_max_height = 30
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.gz
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|gh|svn)$'
let g:ctrlp_custom_ignore = { 
    \ 'dir': '\v[\/](node_modules)|\.(git|svn|swp)$',
    \ 'file': '\v\.(exe|so|dll|jar|png|jpg|jpeg)$',
    \ }

" 执行PHP脚本
autocmd FileType php noremap <C-M> :w!<CR>:!php %<CR>
" 执行nodejs
autocmd FileType javascript noremap <C-M> :w!<CR>:!node --harmony %<CR>
" 执行shell脚本
autocmd FileType sh noremap <C-M> :w!<CR>:!sh %<CR>
