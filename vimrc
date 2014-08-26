" fjyaosun@126.com"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                        "   字体颜色编码                "

set encoding=utf-8
set fileencodings=utf-8,chinese,usc-bom,euc-jp,cs-bom,gb18030,gb2312,cp936
set fileencoding=utf-8
set termencoding=utf-8
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                        "   vim基本设置                 "

set nocompatible                                        "   关闭vi 兼容模式             "
set helplang=cn                                         "   显示中文帮助                "
set ambiwidth=double                                    "   gvim正常显示中文全角        "
syntax enable
syntax on                                               "   自动语法高亮                "
filetype plugin indent on                               "   打开文件类型自动检测        "
set number                                              "   显示行号                    "
""set cursorline                                        "   突出当前行下划线            "
set ruler                                               "   打开状态行标尺              "
set shiftwidth=4                                        "   设置<< 跟 >>移动时的宽度    "
set softtabstop=4                                       "   设置退格键删除空格个数      "
set tabstop=4                                           "   设置 tab 长度               "
set expandtab                                           "    设置tab转成空格            "
""set nobackup                                          "   覆盖文件时不备份            "
""set backupdir=~/.vim/backup                           "   设置备份文件路径            "
set completeopt=menu,longest,preview                    "   自动补全的一些选项          "
set fileformat=unix                                     "   unix|dos|mac                "
set confirm                                             "   没保存内容时的警告信息      "
set display=lastline                                    "   显示当前屏幕能显示的部分    "
set formatoptions=tcqro                                 "   注释换行自动加前导的格式    "
set autochdir                                           "   切换目录为当前文件所在目录  "
set backupcopy=yes                                      "   设置备份时的行为为覆盖      "
set ignorecase smartcase                                "   搜索时忽略大小写,搜素串中   "
                                                        "   有大写字母时保持敏感        "
""set nowrapscan                                        "   搜索到两端不再重新搜索      "
set incsearch                                           "   输入搜索内容时显示搜索结果  "
set hlsearch                                            "   搜索时高亮                  "
set noignorecase                                        "   默认区分大小写              "
set nolinebreak                                         "   在单词中间断行              "
set noerrorbells                                        "   关闭错误响铃                "
set novisualbell                                        "   关闭使用可视响铃代替呼叫    "
set t_vb=                                               "   置空错误铃声的终端代码      "
set magic                                               "   设置魔术                    "
set hidden                                              "   允许未保存修改时切换缓冲区  "
set smartindent                                         "   智能缩进                    "
set backspace=indent,eol,start                          "   不设定插入状态下不能用      "
                                                        "   退格键和Delete键删除回车符  "
set cmdheight=1                                         "   设定命令行行数              "
set laststatus=2                                        "   显示状态栏，1为不显示       "
set foldmethod=syntax                                   "   设置语法折叠                "
set foldenable                                          "   允许折叠                    "
set foldcolumn=0                                        "   设置折叠的宽度              "
set foldlevel=1                                         "   设置折叠层数                "
""set foldmethod=manual                                 "   设置手动折叠                "
""set foldclose=all                                     "   设置自动关闭折叠            "
"set list                                               "   允许tab可见                 "
"set listchars=tab:>-,trail:$                           "   设置tab及行尾空格           "
set history=400                                         "   vim记住的历史操作数量       "
set autoread                                            "   外部文件修改时，自动读取    "
set autoindent cindent cinoptions=g0                    "   vim自动对齐                 "
set mouse=a                                             "   设置使用鼠标                "
set showcmd                                             "   显示输入命令                "
""set go=                                               "   图形按钮                    "
                                                        "   恢复关闭文件时光标最后位置  "
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set scrolloff=3                                         "   设置光标移动离顶部，底部距离"
set tags=tags;                                          "   找不到tag文件就往上级找     "
"" set lines=100 columns=120                            "   设置窗口大小                "
set shell=bash                                          "   设置shell类型               "
set t_Co=256                                            "   设置terminal为256颜色"
set cscopetag
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                        "   vim快捷键设置               "

                                                        "   选择窗口快捷键              "
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <F9> :!ctags -R .<CR>
"" map <F2> :%s/\s*$//g<cr>:noh<cr>"                    "   移除行尾空格                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                        "   vundle                      "
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" original repos on github (Github网站上非vim-scripts仓库的插件，按下面格式填写)
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos  (vim-scripts仓库里的，按下面格式填写)
" Bundle 'L9'
" Bundle 'FuzzyFinder'
"  non github repos   (非上面两种情况的，按下面格式填写)
" Bundle 'git://git.wincent.com/command-t.git'
"  ...
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'asins/vim-powerline'
Plugin 'Tagbar'
Plugin 'Syntastic'
Plugin 'Pydiction'
Plugin 'msanders/snipmate.vim'

call vundle#end()
filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                        "   nerdtree                    "
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeHighlightCursorline=1
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeShowFiles=1
let NERDTreeChDirMode=2
let NERDTreeShowBookmarks=1
let NERDTreeMinimalUI=1
let NERDTreeCasadeOpenSingleChildDir=1
""let NERDTreeShowLineNumbers=1
autocmd vimenter * NERDTree
let NERDTreeQuitOnOpen=0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                        "   Tagbar                      "
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_autoclose = 0
let g:tagbar_autofocus = 1
let g:tagbar_show_visibility = 1
let g:tagbar_expand = 1
let g:tagbar_foldlevel = 3
let g:tagbar_autoshowtag = 1
autocmd VimEnter * nested :TagbarOpen
"autocmd VimEnter * nested :call tagbar#autoopen(1)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                        "   Syntastic                   "
                                                        
let g:syntastic_check_on_open=1
let g:syntastic_echo_current_error=1
let g:syntastic_enable_signs=1
let g:syntastic_enable_balloons = 1
let g:syntastic_enable_highlighting = 1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1

let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_warning_symbol='s⚠'
let g:syntastic_style_error_symbol='s✗'

let g:syntastic_c_checkers=['gcc', 'ycm', 'checkpatch', 'make', 'sparse']
let g:syntastic_c_check_header=1
let g:syntastic_c_auto_refresh_includes=1
let g:syntastic_c_compiler_options=' -ansi'

let g:syntastic_cpp_checkers=['gcc', 'ycm']
let g:syntastic_cpp_check_header=1
let g:syntastic_cpp_auto_refresh_includes=1
let g:syntastic_cpp_compiler_options=' -std=c++0x'
let g:syntastic_cpp_compiler='clang++'

let g:syntastic_lua_checkers=['luac']

let g:syntastic_mode_map = { 'mode': 'active',
			\				 'active_filetypes': ['c', 'cpp', 'lua', 'python'],
			\				 'passive_filetypes': ['puppet'] }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                        "   Pydiction                   "
" let g:pydiction_location = '/path/to/complete-dict'
let g:pydiction_location='~/.vim/bundle/Pydiction/complete-dict'

