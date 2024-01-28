"===[ Setting up Wim ]==="
function! VimplugInstaller()
  let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
  if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
endfunction

function! DownloadCheat()
    let local_file_path = expand('~/.vim/cheat40.txt')
    let github_url = 'https://raw.githubusercontent.com/wolandark/wim/Devel/cheat40.txt'
    if !filereadable(local_file_path)
        echo "Downloading cheat40.txt..."
        execute 'silent !curl -fLo ' . shellescape(local_file_path) . ' --create-dirs ' . shellescape(github_url)
        if filereadable(local_file_path)
            echo "Downloaded cheat40.txt successfully."
        else
            echoerr "Failed to download cheat40.txt."
        endif
    endif
endfunction

function! SetupWim()
  call VimplugInstaller()
  call DownloadCheat()
endfunction
call SetupWim()

"===[ Encoding ]==="
set encoding=utf-8
"===[ Plugins ]==="
call plug#begin()
Plug 'wolandark/Mitra-Vim'
Plug 'wolandark/vim-live-server'
Plug 'wolandark/vim-loremipsum'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'yegappan/mru'
Plug 'DougBeney/pickachu'
Plug 'alvan/vim-closetag'
Plug 'voldikss/vim-floaterm'
Plug 'lifepillar/vim-cheat40'
Plug 'ptzz/lf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'chriskempson/base16-vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'https://github.com/rhysd/clever-f.vim.git'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'https://github.com/ap/vim-css-color.git'
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/godlygeek/tabular.git'
Plug 'mhinz/vim-startify'
Plug 'https://github.com/markonm/traces.vim.git'
Plug 'vimwiki/vimwiki'
Plug 'https://github.com/rstacruz/sparkup.git'
Plug 'https://github.com/Valloric/MatchTagAlways.git'
Plug 'https://github.com/preservim/tagbar.git'
Plug 'junegunn/vim-peekaboo'
Plug 'https://github.com/907th/vim-auto-save.git'
Plug 'https://github.com/sedm0784/vim-you-autocorrect.git'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
call plug#end()

"===[ Auto Save ]==="
let g:auto_save = 1  

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
		colorscheme catppuccin_mocha
	endif
	if expand('%:e') == 'wiki'
		colorscheme base16-horizon-dark
        autocmd VimEnter * :set rnu!
	else
		colorscheme catppuccin_mocha
	endif
endif

if has('gui_running')
	set mouse=a
	set guicursor+=a:blinkon0
	set guifont=Fira\ Code\ 12
	colorscheme catppuccin_mocha
endif

"===[ Startify ]==="
" let g:startify_padding_left = 3
let g:startify_disable_at_vimenter = 0
let g:startify_custom_header = [
			\'                        ',
			\'    ██╗    ██╗██╗███╗   ███╗',
			\'    ██║    ██║██║████╗ ████║',
			\'    ██║ █╗ ██║██║██╔████╔██║',
			\'    ██║███╗██║██║██║╚██╔╝██║',
			\'    ╚███╔███╔╝██║██║ ╚═╝ ██║',
			\'     ╚══╝╚══╝ ╚═╝╚═╝     ╚═╝',
			\ ]
let g:startify_custom_footer = split(system('fortune'), '\n') + ['','']
" let g:startify_custom_footer =
           " \ ['RIP Bram Moolenaar', '', 'Wim, an opionated Vim configuration', 'By Wolandark', ]
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

"===[ Clever F ]==="
let g:clever_f_across_no_line=1
let g:clever_f_ignore_case=1
let g:clever_f_mark_char_color='StatuslineTermNC'

"===[ Clipboard ]==="
set clipboard=unnamedplus,unnamed

"===[ Remember Cursor Position ]==="
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"===[ Persistent Undo History ]==="
function! EnsureVimhisExists()
    let vimhis_path = expand('~/.vimhis')

    if !isdirectory(vimhis_path)
        call mkdir(vimhis_path, 'p')
        echo "Created directory: " . vimhis_path
    " else
        " echo "Directory already exists: " . vimhis_path
    endif
endfunction
call EnsureVimhisExists()

if has('persistent_undo')
	" Save all undo files in a single location (less messy, more risky)...
	set undodir=$HOME/.vimhis
	" Save a lot of back-history...
	set undolevels=5000
	" Actually switch on persistent undo
	set undofile
endif

" set foldenable
set emoji
set autochdir
set hidden
set ma
set conceallevel=0
set concealcursor=n
set so=6
set nocompatible
set modifiable
set autoread
set cmdheight=1 
set foldmethod=manual
set foldlevel=0
set foldclose=all
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
set relativenumber
set number
set hlsearch
noremap <silent><ESC> <ESC>:noh<CR><ESC>
set termbidi
set autowrite
set autowriteall
set laststatus=2
set noshowmode
set colorcolumn=80
set shiftwidth=4
set tabstop=4
syntax on
filetype plugin indent on

"===[ ZWNJ ]==="
call matchadd('Conceal', '\%u200c', 10, -1, {'conceal':'|'})
set conceallevel=2 concealcursor=nv

"===[ NETRW ]==="
" Start with dotfiles hidden
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
" Usual things
let g:netrw_special_syntax = 3
let g:netrw_banner = 0
let g:netrw_keepdir=0

"===[ Lightline Statusbar ]==="
let g:lightline = {
          \ 'colorscheme': 'catppuccin_mocha',
		  \ 'active': {
		  \ 'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'filetype' ], [ 'bufname' ] ],
		  \ 'left': [ [ 'mode' ], [ 'readonly', 'absolutepath', 'modified', 'gitbranch' ] ],
		  \ },
		  \ 'component_function': {
		  \ 'gitbranch': 'FugitiveHead',
		  \ },
		  \ 'component': {
		  \ 'charvaluehex': '0x%B',
		  \ 'lineinfo': '%l\%L',
		  \ }
		  \ }

let g:lightline.separator={ 'left': "\ue0b0", 'right': "\ue0b2" }
let g:lightline.subseparator={ 'left': "\ue0b1", 'right': "\ue0b3" }

"===[ SpellCheking ]==="
noremap <F6> :setlocal spell! spelllang=en_us<CR>
hi SpellBad ctermfg=red guifg=red
set wildmode=longest,list,full

function! FixSpell()
  normal! 1z=<CR>
endfunction
map <leader>z :call FixSpell()<CR>

"===[ Custom Mappings ]==="
let mapleader =" "

nnoremap <leader>t :FloatermToggle<CR>
noremap <nowait><leader>M :Maps <CR>

" Bilingual 
inoremap <C-p> <C-o>:SwitchKeymap<CR>
nnoremap <C-p> :SwitchKeymap<CR>

" Switch Buffers
nnoremap <PageUp> :bn<Cr>
nnoremap <PageDown> :bp<CR>

" Center Cursor Easier
nnoremap <C-m> gM

" Border Around 
nnoremap <leader>\ :.!toilet -w 200 -f term -F border<CR>

" nnoremap <leader>e :Ex <CR>
nnoremap <space>e <Cmd>CocCommand explorer<CR>

nnoremap <leader>T :tabnew file <CR>
nnoremap <leader>mk :mkview <CR>

nnoremap <leader>i :Startify <CR> 

"adding empty line above and below cursor
nnoremap <leader>S :normal! O<ESC>jo<ESC>kzzk<CR>
nnoremap <leader>[ :normal! O<ESC>j
nnoremap <leader>] :normal! o<ESC>k

"Quick save and source 
nnoremap <nowait><leader>w :w!<CR>
nnoremap <leader>so :w<CR>:source %<CR>

vnoremap <leader>k :m .-2<CR>
vnoremap <leader>j :m .+1<CR>
nnoremap <leader>k :m .-2<CR>
nnoremap <leader>j :m .+1<CR>
inoremap <nowait> jj <ESC>

" VimPlug
nnoremap <leader>pli :PlugInstall<CR>
nnoremap <leader>plc :PlugClean<CR>
nnoremap <leader>plu :PlugUpdate<CR>
nnoremap <leader>pld :PlugUpgrade<CR>

"===[ Split Navigation  ]==="
set splitbelow splitright
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-LEFT> <C-w>h
noremap <C-DOWN> <C-w>j
noremap <C-UP> <C-w>k

noremap <C-RIGHT> <C-w>l
noremap <leader>R <C-w>R  "rotate window up/left
noremap <leader>r <C-w>r  "rotate window down/right

"shift arrows to resize splits
noremap <s-Right> :vertical resize +5 <CR>
noremap <s-LEFT> :vertical resize -5 <CR>
noremap <s-UP> :resize +5 <CR>
noremap <s-DOWN> :resize -5 <CR>

"Alt arrows to go to next/previous tab
nnoremap <M-Left> :tabprevious<CR>
nnoremap <M-Right> :tabnext<CR>

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
noremap <leader>0 :tablast<CR>
nnoremap <leader>x :tabclose<CR>
noremap <leader>tm :tabmove<CR>

" FZF 🙂 
noremap <nowait><leader>c :Colors<CR>
noremap <nowait><leader>C :History:<CR>
noremap <nowait><leader>b :Buffers<CR>
noremap <nowait><leader>q :Files<CR>
noremap <nowait><leader>W :Windows<CR>
noremap <nowait><leader>H :History<CR>
noremap <nowait><leader>h :Chmod +x <CR>

"===[ Live Server ]==="
nnoremap <F2> :StartBrowserSync <CR>
nnoremap <F3> :KillBrowserSync <CR>

"===[ GitGutter ]==="
let g:gitgutter_enabled = 1
let g:gitgutter_sign_added = '√' 
let g:gitgutter_sign_modified = '+'
let g:gitgutter_sign_removed = '×'
let g:gitgutter_sign_removed_first_line ='▲'
let g:gitgutter_sign_modified_removed = '-'

"===[ HTML ]==="
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:html_indent_attribute = 1
let g:html_indent_inctags = "html,body,head,tbody"

function! EnsureXMLExists()
  let xml_path = expand('~/.vim/skeleton.xml')
  if !filereadable(xml_path)
    let lines = [
          \ '<!DOCTYPE html>',
          \ '<html lang="en">',
          \ '  <head>',
          \ '    <meta charset="UTF-8">',
          \ '    <meta http-equiv="X-UA-Compatible" content="IE=edge">',
          \ '    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
          \ '    <title>New Page</title>',
          \ '    <link rel="stylesheet" href="style.css">',
          \ '  </head>',
          \ '  <body>',
          \ '    <h1><header>Hello World</header></h1>',
          \ '   <script src="app.js"></script>',
          \ '  </body>',
          \ '</html>',
          \ ]
    call writefile(lines, xml_path)
    " echo "Created file with content: " . xml_path
    " else
    " echo "File already exists: " . xml_path
  endif
endfunction
call EnsureXMLExists()

augroup Xml
    au BufNewFile *.html 0r ~/.vim/skeleton.xml
    " set filetype=html
augroup end

"===[ Close Tag ]==="
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.md'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_shortcut = '>'

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
let wiki = {}
let g:vimwiki_global_ext = 0
let g:vimwiki_root_dir = '~/vimwiki/'
let wiki.nested_syntaxes = {'bash': 'bash', 'python': 'python', 'c++': 'cpp', 'javascript': 'javascript', 'awk': 'awk'}
let g:vimwiki_list = [wiki]

command! Diary VimwikiDiaryIndex
augroup vimwikigroup
    autocmd!
    " automatically update links on read diary
    autocmd BufRead,BufNewFile diary.wiki VimwikiDiaryGenerateLinks
augroup end

"===[ Terminal ]==="
let g:terminal_height = -10
set termwinsize=10x200
nnoremap <leader>' :botright terminal<CR>
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-Down> <C-\><C-n><C-w>j
tnoremap <C-Up> <C-\><C-n><C-w>k
tnoremap <C-PageUp> :tabprevious<CR>
tnoremap <C-PageDown> :tabnext<CR>
set shell=/bin/bash

"===[ Runtime Macros ]==="
runtime macros/emoji-ab.vim
runtime macros/justify.vim 
" use _j to activate
runtime macros/matchit.vim

"===[ Markdown Preview ]==="
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 0
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 1
let g:mkdp_open_ip = ''
let g:mkdp_browser = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0,
    \ 'toc': {}
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
let g:mkdp_filetypes = ['markdown']
let g:mkdp_theme = 'dark'

"===[ SNIPPETS ]==="
"Use Ctrl j key to trigger the snippets, default was TAB but that conflicts with
"the Completion trigger see :h keycodes to change this to sth else 
"use Ctrl j and k to move visually within the snippet that was just triggered
"Ctrl PGDN lists the available snippets
let g:UltiSnipsExpandTrigger='<C-j>'
let g:UltiSnipsListSnippets='<c-PageDown>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'
let g:copypath_copy_to_unnamed_register = 1

"===[ CleverF ]==="
let g:clever_f_mark_cursor=1
let g:clever_f_mark_char=1
let g:clever_f_mark_cursor_color = "DiffDelete"
let g:clever_f_mark_char_color = "SpellBad"
let g:clever_f_across_no_line=0
let g:clever_f_ignore_case=0
let g:clever_f_smart_case=0
let g:clever_f_show_prompt=0

"===[ Disable a lot of unnecessary internal plugins ]==="
" let g:loaded_2html_plugin = 1
let g:loaded_getscriptPlugin = 1
let g:loaded_gzip = 1
let g:loaded_logipat = 1
let g:loaded_rrhelper = 1
let g:loaded_spellfile_plugin = 1
let g:loaded_tarPlugin = 1
let g:loaded_vimballPlugin = 1
let g:loaded_zipPlugin = 1

"===[Coc.nvim]==="
" let g:coc_node_path = "/usr/bin/node"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
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

"===[ Coc Global Extensions ]==="
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-sh',
  \ 'coc-explorer'
  \ ]

"===[ Coc-Snippets ]==="
"Use <C-l> for trigger snippet expand.
"imap <C-l> <Plug>(coc-snippets-expand)

"Use <C-j> for select text for visual placeholder of snippet.
"vmap <C-j> <Plug>(coc-snippets-select)

"Use <C-j> for jump to next placeholder, it's default of coc.nvim
"let g:coc_snippet_next = '<c-j>'

"Use <C-k> for jump to previous placeholder, it's default of coc.nvim
"let g:coc_snippet_prev = '<c-k>'

"Use <C-j> for both expand and jump (make expand higher priority.)
"imap <C-j> <Plug>(coc-snippets-expand-jump)

"Use <leader>x for convert visual selected code to snippet
"xmap <leader>x  <Plug>(coc-convert-snippet)

"===[ Compile and Run C ]==="
noremap <F8> :call CompileAndRun()<CR>

function! CompileAndRun()
  let current_file = expand('%')
  let file_name = fnamemodify(current_file, ':t:r')
  let compile_cmd = 'gcc ' . current_file . ' -o ' . file_name . ' && ./' . file_name
  execute '!'.compile_cmd
endfunction

"===[ Execute From Vim ]==="
function! ExecuteCustomCommand()
    if &ft ==# 'python'
        execute 'RPy'
    elseif &ft ==# 'sh'
        execute 'RB'
	elseif &ft ==# 'javascript'
		execute 'RJs'
    endif
endfunction

augroup custom_commands
    au!
    au FileType python command! RPy :!python3 %
    au BufRead,BufNewFile *.sh command! RB :!bash %
	au FileType javascript command! RJs :!node %
    nnoremap <F12> :call ExecuteCustomCommand()<CR>
augroup end

"=== [ Bilingual Settings ] ==="
function! SetPersianKeymapAndCursorColor()
    set keymap=persian
	silent !echo -ne "\033]12;cyan\007"
	redraw!
	autocmd VimLeave * silent !echo -ne "\033]112\007"
endfunction
command! SetPersian call SetPersianKeymapAndCursorColor()

function! SetBackToEng()
    set keymap=
	silent !echo -ne "\033]112\007"
	redraw!
endfunction
command! SetEng call SetBackToEng()

let g:alt_keymap = 'persian'
let g:alt_enabled = 1

function! CallToggleKeymap()
    if g:alt_enabled
        call ToggleKeymap()
    endif
endfunction

function! ToggleKeymap()
    if &keymap == ''
        execute 'setlocal keymap=' . g:alt_keymap
            silent !echo -ne "\033]12;cyan\007"
            redraw!
            autocmd VimLeave * silent !echo -ne "\033]112\007"
    else
        set keymap= 
            silent !echo -ne "\033]112\007"
            redraw!
    endif
endfunction

command! SwitchKeymap call CallToggleKeymap()
 
function! ListKeymapFiles()
    :Explore $VIMRUNTIME/keymap/
endfunction

"===[ Abbreviations ]==="
iab sh! #!/bin/sh
iab ds! #!/bin/dash
iab bsh! #!/usr/bin/env bash
iab br <br>
iab Lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent at
\ massa et est vulputate sollicitudin vitae at libero. Pellentesque iaculis neque
\ diam, vulputate tempor est ullamcorper quis. Lorem ipsum dolor sit amet, consectetur
\ adipiscing elit. Vivamus sed purus risus. Nunc vitae augue sit amet magna semper
\ efficitur quis at erat. Suspendisse commodo sem at neque feugiat auctor. Praesent
\ pretium tellus odio. Integer a facilisis nibh. Duis hendrerit nibh quis turpis
\ vulputate aliquam id quis nibh. Suspendisse ut quam quis arcu sodales luctus.
\ Ut id sagittis ex. Praesent facilisis velit blandit dictum luctus. Cras in erat
\ malesuada nisi dignissim tempus. Ut in placerat tortor.

"===[ LF ]==="
let g:lf_map_keys = 0
let g:lf_width = 100
let g:lf_height = 40
nnoremap <leader>l :Lf<CR>

"===[ Custom Cheat40.txt ]==="
let g:cheat40_use_default = 0
