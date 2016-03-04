"                                      ##############..... ##############
"  .___              .__               ##############......##############
"  |   | ____   ____ |__| ____ _____     ##########..........##########
"  |   |/  _ \ /    \|  |/ ___\\__  \    ##########........##########
"  |   (  <_> )   |  \  \  \___ / __ \_  ##########.......##########
"  |___|\____/|___|  /__|\___  >____  /  ##########.....##########..
"                  \/        \/     \/   ##########....##########.....
"  __________.__                       ..##########..##########.........
"  \______   \__|____________   __ __ ...##########.#########.............
"   |    |  _/  \___   /\__  \ |  |  \ ..################JJJ............
"   |    |   \  |/    /  / __ \|  |  /   ################.............
"   |______  /__/_____ \(____  /____/    ##############.JJJ.JJJJJJJJJJ
"          \/         \/     \/          ############...JJ...JJ..JJ  JJ
"                                        ##########....JJ...JJ..JJ  JJ
"                                        ########......JJJ..JJJ JJJ JJJ
"                                        ######    .........
"                                                   .....
" This is the personal .vimrc file of Ionică Bizău.   .
"
" While much of it is beneficial for general use, I would
" recommend picking out the parts you want and understand.
"
" You can find me at https://github.com/IonicaBizau
" Licensed with <3 under The MIT License.

" ------------------------------"
" Plugins
" ------------------------------"
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'flazz/vim-colorschemes'
Plugin 'mattn/emmet-vim.git'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'sheerun/vim-polyglot'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'tpope/vim-unimpaired'

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" All of your Plugins must be added before the following line
call vundle#end()            " required

let g:neocomplcache_enable_at_startup = 1

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

let g:jsdoc_custom_args_hook = {
  \ 'callback\|cb': {
  \   'type': '{Function}',
  \   'description': 'The callback function.'
  \ },
  \ 'project': {
  \   'type': '{String}',
  \   'description': 'The project name.'
  \ },
  \ 'progress': {
  \   'type': '{Function}',
  \   'description': 'The progress function.'
  \ }
\}

let g:jsdoc_type_hook = {
 \ 'Object': 'An object containing the following fields:',
 \ 'Function': 'The callback function.'
 \ }

let g:jsdoc_enable_es6 = 1
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_additional_descriptions = 1
let g:jsdoc_return_description = 1
nmap <silent> <C-l> <Plug>(jsdoc)

" ------------------------------"
" Misc Settings
" ------------------------------"

" Necesary for lots of cool vim things
set nocompatible

" This shows what you are typing as a command.  I love this!
set showcmd

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*

" Who doesn't like autoindent?
set autoindent

" Spaces are better than a tab character
set expandtab
set smarttab

" Who wants an 8 character tab?  Not me!
set shiftwidth=4
set softtabstop=4

" Use english for spellchecking, but don't spellcheck by default
if version >= 700
   set spl=en spell
   set nospell
endif

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

" Enable mouse support in console
set mouse=a

" Got backspace?
set backspace=2

" Line Numbers PWN!
set number

" Ignoring case is a fun trick
set ignorecase

" And so is Artificial Intellegence!
set smartcase

" Highlight things that we find with the search
set hlsearch

" Since I use linux, I want this
let g:clipbrdDefaultReg = '+'

" When I close a tab, remove the buffer
set nohidden

" Set off the other paren
highlight MatchParen ctermbg=4

" ------------------------------"
" Look and Feel
" ------------------------------"

" Status line gnarliness
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]
syntax on
filetype plugin indent on
set nowrap
set incsearch

" Paste
let paste_mode = 0 " 0 = normal, 1 = paste
func! Paste_on_off()
   if g:paste_mode == 0
      set paste
      let g:paste_mode = 1
   else
      set nopaste
      let g:paste_mode = 0
   endif
   return
endfunc

" Open Terminal in new tab
func! OpenTerminal()
   tabnew
   ConqueTerm bash
   return
endfunc

" Todo List Mode
function! TodoListMode()
   e ~/.todo.otl
   Calendar
   wincmd l
   set foldlevel=1
   tabnew ~/.notes.txt
   tabfirst
endfunction

" ------------------------------"
" Mappings
" ------------------------------"

" Next Tab
nnoremap <silent> <C-Right> :tabnext<CR>

" Previous Tab
nnoremap <silent> <C-Left> :tabprevious<CR>

" New Tab
nnoremap <silent> <C-t> :tabnew<CR>

" Paste Mode!  Dang! <F10>
nnoremap <silent> <F10> :call Paste_on_off()<CR>
nnoremap <silent> <F12> :wincmd w<CR>
set pastetoggle=<F10>

" Swap ; and :  Convenient.
nnoremap ; :
nnoremap : ;

" Delete unwanted spaces
autocmd BufWritePre * :%s/\s\+$//e
