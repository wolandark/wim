 " ____________________________________________________
" /\                                                   \
" \_| oooooo   oooooo     oooo  o8o                    |
 "  |  `888.    `888.     .8'   `'                     |
 "  |   `888.   .8888.   .8'   oooo  ooo. .oo.  .oo.   |
 "  |    `888  .8'`888. .8'    `888  `888P"Y88bP"Y88b  |
 "  |     `888.8'  `888.8'      888   888   888   888  |
 "  |      `888'    `888'       888   888   888   888  |
 "  |       `8'      `8'       o888o o888o o888o o888o |
 "  |                                                  |
 "  |                                                  |
 "  |                                                  |
 "  |   _______________________________________________|_
 "   \_/_________________________________________________/

" Written By Woland

" An IDE-like Vim / Nvim configuration

" https://github.com/wolandark
" https://github.com/wolandark/wim

 "===[ Plugins Auto Install ]==="
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"===[Coc.nvim]==="
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><s-tab> coc#pum#visible() ? coc#pum#prev(1) : "\<c-h>"

"===[ Coc-Explorer ]==="
" set up coc-explorer to open in the current directory
let g:coc_explorer_global_mirror = 0
let g:coc_explorer_disable_default_keybindings = 1
let g:coc_explorer_global_root = 'current'

"===[ Coc-Snippets ]==="
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
xmap <leader>x  <Plug>(coc-convert-snippet)

"===[ Encoding ]==="
set encoding=utf-8
"===[ ab Mappings ]==="
ab tea ☕
ab ptr ▶
ab cbe ▄
ab cbe2 ■
ab okk ✓
ab str ★

"===[ Plugins ]==="
call plug#begin()
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'junegunn/vim-peekaboo'
Plug 'https://github.com/tpope/vim-repeat.git'
Plug 'https://github.com/baskerville/vim-sxhkdrc.git'
Plug 'terroo/vim-simple-emoji'
Plug 'itchyny/lightline.vim'
Plug 'chriskempson/base16-vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/rhysd/clever-f.vim.git'
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'https://github.com/tpope/vim-eunuch.git'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/godlygeek/tabular.git'
Plug 'mhinz/vim-startify'
Plug 'voldikss/vim-floaterm'
Plug 'https://github.com/markonm/traces.vim.git'
Plug 'vimwiki/vimwiki'
Plug 'https://github.com/rstacruz/sparkup.git'
Plug 'https://github.com/vim-scripts/loremipsum.git'
Plug 'https://github.com/907th/vim-auto-save.git'
Plug 'https://github.com/Valloric/MatchTagAlways.git'
Plug 'https://github.com/preservim/tagbar.git'
call plug#end()

"===[ Cursor ]==="
set guicursor+=a:blinkon0
set guifont=Fira\ Code\ 12

"===[ Clipboard ]==="
set clipboard=unnamedplus,unnamed

"===[ Usual Things ]==="
nnoremap ; :

"===[ Remember Cursor Position ]==="
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"===[ Persistent Undo History ]==="
if has('persistent_undo')
	" Save all undo files in a single location (less messy, more risky)...
	set undodir=$HOME/.vimhis
	" Save a lot of back-history...
	set undolevels=5000
	" Actually switch on persistent undo
	set undofile
endif

set emoji
set autochdir
set hidden
set ma
set listchars=tab:>~,nbsp:_,trail:.
set list
set conceallevel=0
set concealcursor=n
set so=6
set nocompatible
set modifiable
set autoread
set cmdheight=1 
set foldenable
set foldmethod=indent
set path+=**
set noswapfile
set autoindent
set ic
set incsearch
set smartcase
set noerrorbells
set novisualbell
set t_vb=
set noeb vb t_vb=
syntax on
set relativenumber
filetype plugin indent on
set hlsearch
noremap <silent><esc> <esc>:noh<CR><esc>
set termbidi
set autowrite
set autowriteall
set laststatus=2
set noshowmode
set colorcolumn=80
" set number
" set expandtab
" set shiftwidth=4
" set tabstop=4
" set lazyredraw
" set ft=c
" set cursorline
" set noshowmatch
" for backspace not working in Gvim or in Windows
" set backspace=2
" set cursorline

"===[ Theme ]==="
set background=dark
" Inspect $TERM instead of t_Co
if &term =~ '256color'
    " Enable true (24-bit) colors instead of (8-bit) 256 colors.
    if has('termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
        set termguicolors
        set mouse=a
    endif
    colorscheme base16-horizon-dark
	" colorscheme catppuccin_mocha
endif

if has('gui_running')
    set mouse=a
endif

"===[ Netrw ]==="
autocmd filetype netrw call Netrw_mappings()
function! Netrw_mappings()
	noremap <buffer>% :call CreateInPreview()<cr>
endfunction
function! CreateInPreview()
	let l:filename = input("please enter filename: ")
	execute 'pedit ' . b:netrw_curdir.'/'.l:filename
endfunction
function! CreateInPreview()
	let l:filename = input("please enter filename: ")
	execute 'silent !touch ' . b:netrw_curdir.'/'.l:filename 
	redraw!
endf
let g:NetrwIsOpen=0

function! ToggleNetrw()
	if g:NetrwIsOpen
		let i = bufnr("$")
		while (i >= 1)
			if (getbufvar(i, "&filetype") == "netrw")
				silent exe "bwipeout " . i 
			endif
			let i-=1
		endwhile
		let g:NetrwIsOpen=0
	else
		let g:NetrwIsOpen=1
		silent Vexplore
	endif
endfunction

"===[ Uncomment to get Netrw on vimenter ]==="
" augroup projectdrawer
"   autocmd!
"   autocmd vimenter * :Vexplore | wincmd p
" augroup end

" Close if only remaining buffer
autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif
" Start with dotfiles hidden
let ghregex='\(^\|\s\s\)\zs\.\S\+'
let g:netrw_list_hide=ghregex
" Usual things
let g:netrw_special_syntax = 3
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15
let g:netrw_keepdir=0

"===[ Lightline Statusbar ]==="
let g:lightline = {
   	\ 'colorscheme': 'papercolor',
      \ 'active': {
      \ 'right': [ [ 'lineinfo' ], [ 'percent', 'wordcount' ], [ 'filetype' ] ],
      \ 'left': [ [ 'mode' ], [ 'readonly', 'absolutepath', 'modified' ] ],
      \ },
      \ 'component_function': {
      \ 'wordcount': 'WordCount',
      \ },
      \ 'component': {
      \ 'charvaluehex': '0x%B',
      \ 'lineinfo': '%l\%L',
      \ }
      \ }

let g:lightline.separator={ 'left': "\ue0b0", 'right': "\ue0b2" }
let g:lightline.subseparator={ 'left': "\ue0b1", 'right': "\ue0b3" }

"===[ SpellCheking ]==="
map <F6> :setlocal spell! spelllang=en_us<cr>
"set spell spelllang=en_us
hi SpellBad ctermfg=red guifg=red

function! Fixspell()
    normal! 1z=
endfunction 
nnoremap <leader>z :call Fixspell()<CR>
nmap <leader>l :normal! 1z=w1z=w1z=w1z=w1z=w1z=w1z=w1z=w1z=w1z=w1z=w1z=w1z=w1z=w1z=w1z=w<Cr>
set wildmode=longest,list,full

"===[ Justify Text Macro ]==="
" use _j to activate
ru macros/justify.vim 

"===[ Custom Mappings ]==="

" LEADER"
" leader key is space
let mapleader =" "

nmap <C-m> gM

nmap <leader>\ :.!toilet -w 200 -f term -F border<Cr>

nmap <leader>e <Cmd>CocCommand explorer<CR>

nnoremap <leader>v :FloatermNew vifm <Cr>
nnoremap <leader>r :FloatermNew ranger <Cr>

nnoremap <leader>T :tabnew file <Cr>
nnoremap <leader>mk :mkview <Cr>

nnoremap <leader>d :g/^\(.*\)$\n\1/d<Cr>
nnoremap <leader>i :Startify <CR> 
"adding empty line above and below cursor
nnoremap <leader>S :normal! O<esc>jo<esc><Cr>

map <leader>[ :call append(line('.')-1, '')<CR>
map <leader>] :call append(line('.'), '')<CR>

"Quick save and source 
nmap <nowait><leader>w :w!<cr>
nnoremap <leader>op :source %<Cr>

nnoremap <leader>u :normal! kmmjdd{p'm<Cr> 

vnoremap <leader>k :m .-2<CR>
vnoremap <leader>j :m .+1<CR>
nmap <leader>k :m .-2<CR>
nmap <leader>j :m .+1<CR>

inoremap <nowait> jj <esc>
nnoremap bs i#!/bin/bash<ESC>0
nnoremap be i#!/usr/bin/env bash<ESC>0
nmap br i<br><ESC>0

" set timeoutlen=300

" nmap <leader>f :.!toilet -w 200 -f small<Cr>
" nmap <leader>F :.!toilet -w 200 -f standard<Cr>

"Good fonts with figlet
".!figlet -w 200 -f ascii___ future emboss

" nnoremap <leader>e :call ToggleNetrw()<Cr>

"===[ Split Navigation  ]==="
set splitbelow splitright
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <C-LEFT> <C-w>h
map <C-DOWN> <C-w>j
map <C-UP> <C-w>k
map <C-RIGHT> <C-w>l

map <leader>R <C-w>R  "rotate window up/left
" map <leader>r <C-w>r  "rotate window down/right
"
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l

inoremap <A-b> <C-o>b
inoremap <A-w> <C-o>w

"shift arrows to resize splits
map <s-LEFT> :vertical resize +5 <Cr>
map <s-RIGHT> :vertical resize -5 <Cr>
map <s-UP> :resize +5 <Cr>
map <s-DOWN> :resize -5 <Cr>

"Alt arrows to go to next/previous tab
nnoremap <M-Left> :tabprevious<CR>
nnoremap <M-Right> :tabnext<CR>
nnoremap <M-h> :tabprevious<CR>
nnoremap <M-l> :tabnext<CR>
"Keybindings for tab navigation with leader and number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
nnoremap <leader>x :tabclose<Cr>
map <leader>tm :tabmove<Cr>
"others
map <nowait><leader>c :Colors<Cr>
map <leader>b :Buffers<Cr>
map <leader>s :Files<Cr>
map <leader>W :Windows<Cr>
map <leader>H :History<Cr>
map <leader>Hc :History:<Cr>
map <leader>t :FloatermToggle<Cr>
nmap <leader>h :Chmod +x <Cr>

inoremap<nowait>" ""<left>
inoremap<nowait>' ''<left>
inoremap<nowait>( ()<left>
inoremap<nowait>[ []<left>
inoremap<nowait>{ {}<left>

" use shift and vim keys to rotate splits
" map <s-H> <C-w>H
" map <s-J> <C-w>J
" map <s-K> <C-w>K
" map <s-L> <C-w>L

" map <s-q> :set keymap= <Cr>
" map <s-p> :set keymap=persian <Cr>

"===[Easy Motion ]==="
nmap fy <Plug>(easymotion-overwin-f)
" Move to line across splits
nmap fl <Plug>(easymotion-overwin-line)
" Move to line
nmap ml <Plug>(easymotion-bd-jk)
nmap fw <Plug>(easymotion-overwin-w)
nmap s <Plug>(easymotion-overwin-f2)
" <Leader>f{char} to move to {char}
" nmap <leader>f <Plug>(easymotion-bd-f)
nmap <leader>f <Plug>(easymotion-w)
" s{char}{char} to move to {char}{char}
" Move to word
nmap <leader>m <Plug>(easymotion-bd-w)

"===[ PYTHON ]==="
" Number of spaces that a pre-existing tab is equal to.
" For the amount of space used for a new tab use shiftwidth.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=8

" What to use for an indent.
" This will affect Ctrl-T and 'autoindent'.
" Python: 4 spaces
" C: tabs (pre-existing files) or 4 spaces (new files)
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
fu Select_c_style()
    if search('^\t', 'n', 150)
        set shiftwidth=8
        set noexpandtab
    el 
        set shiftwidth=4
        set expandtab
    en
endf
au BufRead,BufNewFile *.c,*.h call Select_c_style()
au BufRead,BufNewFile Makefile* set noexpandtab

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
" Python: 79 
" C: 79
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set textwidth=79

" Turn off settings in 'formatoptions' relating to comment formatting.
" - c : do not automatically insert the comment leader when wrapping based on
"    'textwidth'
" - o : do not insert the comment leader when using 'o' or 'O' from command mode
" - r : do not insert the comment leader when hitting <Enter> in insert mode
" Python: not needed
" C: prevents insertion of '*' at the beginning of every line in a comment
au BufRead,BufNewFile *.c,*.h set formatoptions-=c formatoptions-=o formatoptions-=r

" Use UNIX (\n) line endings.
" Only used for new files so as to not force existing files to change their
" line endings.
" Python: yes
" C: yes
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

"===[ HTML ]==="
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:html_indent_attribute = 1
let g:html_indent_inctags = "html,body,head,tbody"
"A skeleton can be pre-defined for any file with a fomat
"Below setting force vim to paste a basic html skeleton whenever
"vim is used to make a .html file. The skeleton.xml file must exist 
"in the path specified below
augroup Xml
    au BufNewFile *.html 0r ~/.vim/skeleton.xml
augroup end

"===[ Startify ]==="
let g:startify_custom_header =
            \ startify#pad(readfile('/home/woland/vim-ascii.txt'))
            " \ startify#pad(split(system('figlet -f roman Vim|boxes -d parchment' ), '\n'))
  let g:startify_custom_footer =
           \ ['', "Once you get in, There is no getting out  ", '']
"Bookmarks. Syntax is clear.add yours
let g:startify_bookmarks = [ {'B': '~/.bashrc'},{'V': '~/.vimrc'}]
    let g:startify_lists = [
          \ { 'type': 'bookmarks' , 'header': ['   Bookmarks']      } ,
          \ { 'type': 'files'     , 'header': ['   Recent'   ]      } ,
          \ { 'type': 'sessions'  , 'header': ['   Sessions' ]      } ,
          \ { 'type': 'commands'  , 'header': ['   Commands' ]      } ,
          \ ]

hi StartifyBracket ctermfg=240
hi StartifyFile    ctermfg=147
hi StartifyFooter  ctermfg=240
hi StartifyHeader  ctermfg=114
hi StartifyNumber  ctermfg=215
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240
hi StartifySpecial ctermfg=240

"===[ Floterm ]==="
let g:floaterm_autohide = 0
let g:floaterm_autoclose = 2
let g:floaterm_height = 30
let g:floaterm_width  = 120

"===[ Clever F ]==="
let g:clever_f_across_no_line=1
let g:clever_f_ignore_case=1
let g:clever_f_mark_char_color='StatuslineTermNC'
" let g:clever_f_highlight_timeout_ms=500

"===[ Tagbar ]==="
let g:tagbar_type_vimwiki = {
          \   'ctagstype':'vimwiki'
          \ , 'kinds':['h:header']
          \ , 'sro':'&&&'
          \ , 'kind2scope':{'h':'header'}
          \ , 'sort':0
          \ , 'ctagsbin':'/home/woland/vwtags.py'
          \ , 'ctagsargs': 'default'
          \ }
let g:tagbar_autofocus = 1
let g:tagbar_autoupdate = 1

"===[ VimWiki ]==="
let g:vimwiki_global_ext = 0
let g:vimwiki_root_dir = '/home/woland/vimwiki/'

"===[ Terminal ]==="
" Set terminal height
let g:terminal_height = -10
set termwinsize=10x200
nnoremap <Leader>' :botright terminal<CR>
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
set shell=/bin/bash

"===[ Hexokinase ]==="
" Patterns to match for all filetypes
" Can be a comma separated string or a list of strings

" Default value:
" let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla,colour_names'

" All possible values
let g:Hexokinase_optInPatterns = [
\     'full_hex',
\     'triple_hex',
\     'rgb',
\     'rgba',
\     'hsl',
\     'hsla',
\     'colour_names'
\ ]

let g:Hexokinase_highlighters = [ 'backgroundfull' ]

" Vim default
" let g:Hexokinase_highlighters = [ 'sign_column' ]

" All possible highlighters
" let g:Hexokinase_highlighters = [
" \   'virtual',
" \   'sign_column',
" \   'background',
" \   'backgroundfull',
" \   'foreground',
" \   'foregroundfull'
" \ ]

