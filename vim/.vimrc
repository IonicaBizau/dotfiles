"+-------------------------------------------------------+"
"+ Follow me on Github :: https://github.com/IonicaBizau +"
"+-------------------------------------------------------+"

" ------------------------------"
" Misc Settings
" ------------------------------"

" Necesary  for lots of cool vim things
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
nnoremap <silent> <F12> :call OpenTerminal()<CR>
set pastetoggle=<F10>

" Swap ; and :  Convenient.
nnoremap ; :
nnoremap : ;

filetype plugin indent on
syntax on

set nowrap

" ------------------------------"
" Plugins
" ------------------------------"

"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=/home/ionicabizau/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('/home/ionicabizau/.vim/bundle'))
NeoBundleLazy 'The-NERD-tree', {'augroup' : 'NERDTree'}
command! NERDTree :call NERDTree()
function! NERDTree()
NeoBundleSource The-NERD-tree
    NERDTree
endfunction

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle "mattn/emmet-vim.git"
NeoBundle "Shougo/neocomplcache.vim"

let g:neocomplcache_enable_at_startup = 1

NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'lrvick/Conque-Shell'
NeoBundle 'heavenshell/vim-jsdoc'

let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_additional_descriptions = 1
let g:jsdoc_return_description = 1

NeoBundle "MarcWeber/vim-addon-mw-utils"
NeoBundle "tomtom/tlib_vim"
NeoBundle "garbas/vim-snipmate"
NeoBundle "honza/vim-snippets"
NeoBundle "sheerun/vim-polyglot"
NeoBundle 'junegunn/vim-emoji'
NeoBundle 'maksimr/vim-jsbeautify'
NeoBundle 'einars/js-beautify'
NeoBundle 'tpope/vim-unimpaired'

autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" ...

" Required:
call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" Delete unwanted spaces
autocmd BufWritePre * :%s/\s\+$//e
