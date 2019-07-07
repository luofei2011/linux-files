set nocompatible
set backspace=indent,eol,start
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
"Plugin 'mxw/vim-jsx'
Plugin 'neoclide/vim-jsx-improve'
Plugin 'Yggdroot/indentLine'
Plugin 'posva/vim-vue'

call vundle#end()
filetype plugin indent on

set nu
syntax on
set history=1000
set autoindent
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab

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
" 解决js书写过程中链式调用自动缩进一行的问题
" https://github.com/pangloss/vim-javascript/issues/467
let g:javascript_opfirst=1

" vim-jsx
"let g:jsx_ext_required = 0
"let g:jsx_pragma_required = 1

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
" vue
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

nnoremap <leader>h :set filetype=html<CR>
nnoremap <leader>c :set filetype=css<CR>
nnoremap <leader>j :set filetype=javascript<CR>
nnoremap <leader>p :set filetype=php<CR>
nnoremap <leader>a :set filetype=actionscript<CR>

setlocal foldmethod=syntax

" filetype and file highlight
au FileType less set ft=css syntax=css
au FileType javascript set dictionary=~/.vim/dict/javascript.dict
au FileType javascript set dictionary+=~/.vim/dict/node.dict

let g:indentLine_setColors = 0

let g:user_emmet_install_global=0
autocmd FileType javascript,html,css,javascript.jsx,vue,wxml EmmetInstall
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\ 'wxss': {
\   'extends': 'css',
\ },
\ 'wxml': {
\   'extends': 'html',
\   'aliases': {
\     'div': 'view',
\     'span': 'text',
\   },
\  'default_attributes': {
\     'block': [{'wx:for-items': '{{list}}','wx:for-item': '{{item}}'}],
\     'navigator': [{'url': '', 'redirect': 'false'}],
\     'scroll-view': [{'bindscroll': ''}],
\     'swiper': [{'autoplay': 'false', 'current': '0'}],
\     'icon': [{'type': 'success', 'size': '23'}],
\     'progress': [{'precent': '0'}],
\     'button': [{'size': 'default'}],
\     'checkbox-group': [{'bindchange': ''}],
\     'checkbox': [{'value': '', 'checked': ''}],
\     'form': [{'bindsubmit': ''}],
\     'input': [{'type': 'text'}],
\     'label': [{'for': ''}],
\     'picker': [{'bindchange': ''}],
\     'radio-group': [{'bindchange': ''}],
\     'radio': [{'checked': ''}],
\     'switch': [{'checked': ''}],
\     'slider': [{'value': ''}],
\     'action-sheet': [{'bindchange': ''}],
\     'modal': [{'title': ''}],
\     'loading': [{'bindchange': ''}],
\     'toast': [{'duration': '1500'}],
\     'audio': [{'src': ''}],
\     'video': [{'src': ''}],
\     'image': [{'src': '', 'mode': 'scaleToFill'}],
\   }
\ },
\}
