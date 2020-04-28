set number

set encoding=utf-8

"语法高亮
syntax on

"修改vim tab为4个空格
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"启用鼠标
set mouse=a

"映射
let mapleader=','

"使用leader+w 直接保存
inoremap <leader>w <Esc>:w<cr>

"使用jj进入normal模式
inoremap jj <Esc>`^

"使用ctrl+h/j/k/l 切换窗口
noremap <C-h> <C-w>h
noremap <C-h> <C-w>j
noremap <C-h> <C-w>k
noremap <C-h> <C-w>l

"移动
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>


"pecify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"vim-startify
Plug 'mhinz/vim-startify'

"安装vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"安装缩进线
Plug 'yggdroot/indentline'

"代码注释
Plug 'tpope/vim-commentary'

"markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

"nerdtee
Plug 'scrooloose/nerdtree'

"符号补全
Plug 'Raimondi/delimitMate'

"代码格式化
Plug 'sbdchd/neoformat'

" Ininialize plugin system
call plug#end()

"nerdtree设置
nnoremap <leader>v :NERDTreeFind<cr>
",g来打开NERDTREE
nnoremap <leader>g :NERDTreeToggle<cr>
"显示隐藏文件
let NERDTreeShowHidden=1
"忽略的文件类型
let NERDTreeIgnore=[
    \ '\.pyc$', '\.hg$', '\.swp$', '\.git$', '\.svn$', '\.stversions$', '\.ropeproject$',
    \ '\.pyo$', '\DS_Store$', '\.sass-cache$', '__pycache__$', '\.egg-info$', 
    \ ]
