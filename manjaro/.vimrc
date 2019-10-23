"常用设置
"设置行号
set number
set encoding=utf-8
"语法高亮
syntax on
"Vim修改tab为4个空格
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
"启用鼠标
set mouse=a
"一些方便的映射
let mapleader=','

"使用leader+w 直接保存
inoremap <leader>w <Esc>:w<cr>

"使用 jj 进入 normal 模式
inoremap jj <Esc>`^
"使用ctrl+h/j/k/l 切换窗口
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"安装vim-startify
Plug 'mhinz/vim-startify'
"安装nerdtee
Plug 'scrooloose/nerdtree'
"安装vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"安装缩进线
Plug 'yggdroot/indentline'
"安装快速搜索
Plug 'ctrlpvim/ctrlp.vim'
"安装快速定位插件
Plug 'easymotion/vim-easymotion'
"安装成对修改插件
Plug 'tpope/vim-surround'
" 安装模糊搜索
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
"python IDE vim
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
"代码补全
" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Or latest tag
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
" Or build from source code by use yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
"代码格式化
Plug 'sbdchd/neoformat'
"静态检查
""Plug 'w0rp/ale'
"代码注释
Plug 'tpope/vim-commentary'
"markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
"显示下划线
Plug 'itchyny/vim-cursorword'
"符号补全
Plug 'Raimondi/delimitMate'

" Ininialize plugin system
call plug#end()

"nerdtree设置
nnoremap <leader>v :NERDTreeFind<cr>
",+g来打开NERDTree
nnoremap <leader>g :NERDTreeToggle<cr>
"显示隐藏文件
let NERDTreeShowHidden=0
"忽略的文件类型
let NERDTreeIgnore=[
	\ '\.pyc$', '\.hg$', '\.swp$', '\.git$', '\.svn$', '\.stversions$', '\.ropeproject$',
	\ '\.pyo$', '\DS_Store$', '\.sass-cache$', '__pycache__$', '\.egg-info$', 
	\ ]

"ctrlpvim/ctrlp.vim配置
let g:ctrlp_map = '<c-p>'

"easymotion递归映射
nmap ss <Plug>(easymotion-s2)

"python-mode
let g:pymode_python = 'python3'
let g:pymode_trim_whitespaces = 1
let g:pymode_doc = 1
let g:pymode_rope_goto_definition_bind = "<C-]>"
let g:pymode_lint = 1
let g:pymode_options_max_line_length = 120

"快捷输入
nmap <c-o> <End>A<cr>
imap <C-o> <End><cr>
"自动完成括号和引号
" :inoremap ( ()<ESC>i
" :inoremap ) <c-r>=ClosePair(')')<CR>
" :inoremap { {<CR>}<ESC>O
" :inoremap } <c-r>=ClosePair('}')<CR>
" :inoremap [ []<ESC>i
" :inoremap ] <c-r>=ClosePair(']')<CR>
" :inoremap " ""<ESC>i
" :inoremap ' ''<ESC>i
" function! ClosePair(char)
"     if getline('.')[col('.') - 1] == a:char
"         return "\<Right>"
"     else
"        return a:char
"    endif
"endfunction

filetype plugin indent on 
"移动
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>

:iabbrev {i {}<esc>i<cr>O
