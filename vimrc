
"============开始设置Vundle插件管理，用来管理其他插件==============
set nocompatible              " be iMproved, required
filetype off                  " required
 
" " set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
"  
" " let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'
" " Plugin 'Valloric/YouCompleteMe'  "自动补全
" Plugin 'vim-syntastic/syntastic' "每次保存文件时检查代码语法
" Plugin 'jiangmiao/auto-pairs'    "自动补全括号和引号
" 
" " All of your Plugins must be added before the following line
" call vundle#end()            " required
" filetype plugin indent on    " required


"===================插件管理安装结束===================

"#vim配置做些简单的配置：
set nocompatible    "关闭与vi的兼容模式
set number          "显示行号
set ruler           "显示第几行第几列
set nowrap          "不自动折行
set showmatch       "显示匹配的括号
set scrolloff=3     "距离顶部和底部3行
set encoding=utf-8  "编码
set fenc=utf-8      "编码
set hlsearch        "搜索高亮
set incsearch       "增量搜索
set background=dark
set guifont=Monospace\ 16
set autoindent | set smartindent
" set tabstop=2  | set shiftwidth=2 | set expandtab
syntax on    "语法高亮
colorscheme darkblue
set textwidth=79
set wrap!

"为py文件添加下支持pep8风格的配置：
au BufNewFile,BufRead *.py
\ set tabstop=2 | set softtabstop=2 | set shiftwidth=2 | set expandtab | 
\ set textwidth=79 |
\ set fileformat=unix 

au BufNewFile,BufRead *.psl set filetype=psl | 
\ set tabstop=4 | set softtabstop=4 | set shiftwidth=4 | set expandtab | 
\ set textwidth=79 |
\ set fileformat=unix 


" dont use Q for Ex mode
map Q :q

" make tab in v mode ident code
vmap <tab> >gv
vmap <s-tab> <gv

" make tab in normal mode ident code
nmap <tab> I<tab><esc>
nmap <s-tab> ^i<bs><esc>

" comment/uncomment blocks of code (in vmode)
vmap _c :s/^/#/gi<Enter>
vmap _C :s/^#//gi<Enter>

"highlight BadWhitespace ctermbg=red guibg=darkred
hi BadWhitespace guifg=gray guibg=red ctermfg=gray ctermbg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


"===================暂时不用===================
""这个是我喜欢的，一旦一行的字符超出80个的话就把那些字符的背景设为红色
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929 
"match OverLength /\%81v.\+/
"
" let g:syntastic_python_python_exec = '/usr/local/bin/python3'
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_quiet_messages = { 'regex': 'E111\|E114\|E127\|E128\|E221\|E222\|E231\|E265\|E266\|E271\|E272\|E302\|E401\|E402\|E501\|E701\|E702\|E741' }

