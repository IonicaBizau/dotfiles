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

"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleLazy 'The-NERD-tree', {'augroup' : 'NERDTree'}
command! NERDTree :call NERDTree()
function! NERDTree()
NeoBundleSource The-NERD-tree
    NERDTree
endfunction

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
"NeoBundle 'github/copilot.vim'

NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

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

"NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle "mattn/emmet-vim.git"
NeoBundle "Shougo/neocomplcache.vim"

let g:neocomplcache_enable_at_startup = 1

NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'lrvick/Conque-Shell'
NeoBundle 'heavenshell/vim-jsdoc'

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


let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_additional_descriptions = 1
let g:jsdoc_return_description = 1
let g:jsdoc_enable_es6 = 1
nmap <silent> <C-l> <Plug>(jsdoc)

let g:jsdoc_templates_path = expand('~/.vim/bundle/vim-jsdoc/examples/snippet_template.js')

NeoBundle "MarcWeber/vim-addon-mw-utils"
NeoBundle "tomtom/tlib_vim"
"NeoBundle "garbas/vim-snipmate"
NeoBundle "honza/vim-snippets"
"NeoBundle "sheerun/vim-polyglot"
"let g:polyglot_disabled = ['md']

NeoBundle 'junegunn/vim-emoji'
NeoBundle 'maksimr/vim-jsbeautify'
NeoBundle 'einars/js-beautify'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'johngrib/vim-game-code-break'
NeoBundle 'powerman/vim-plugin-AnsiEsc'

call neobundle#end()
NeoBundleCheck
"End NeoBundle Scripts-------------------------

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

" Node.js fs.watch
set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.
set backupcopy=yes

" Folding
"  za: Toggle code folding at the current line.
"  zR: Open all folds.
"  zM: Close all folds.
set foldmethod=syntax
autocmd FileType c setlocal foldmethod=syntax

" Keep all folds open when a file is opened
augroup OpenAllFoldsOnFileOpen
    autocmd!
    autocmd BufRead * normal zR
augroup END

set background=dark

let g:copilot_filetypes = {
    \ 'gitcommit': v:true,
    \ 'markdown': v:true,
    \ 'md': v:true,
    \ 'yaml': v:true
    \ }

" Disable mouse support in console
" set mouse=

