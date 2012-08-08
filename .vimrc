
"
" File       : ~/.vimrc
" Maintainer : Rafael Viotti <rviotti@gmail.com>
" Last change: 2009 Mar 24
"

" Use Vim settings, rather than Vi settings (much better!).
" This must come first, because it changes other options as a side effect.
set nocompatible

" Make sure vim checks for 'set commands' in opened files.
set modeline

" Show the cursor position all the time.
set ruler

" Don't wrap lines.
set nowrap

" Case insensitive searches.
set ic

" Tabs em espaços
set expandtab

" No audible bell (visual bell instead).
set vb

" Highlight searches.
set hls

" Keep 200 lines of command line history.
set history=200

" Setup backup location.
set backupdir=~/.vim/backup

" Disable backup.
set nobackup

" Automatically insert a comment leader after typing 'o' or 'O' in Normal mode.
set fo+=o

" Do not automatically insert a comment leader after an enter.
set fo+=r

" Do no auto-wrap text using textwidth (does not apply to comments).
set fo-=t

" Shift width, two spaces:
set sw=4

" Allow backspacing over everything in insert mode.
set bs=indent,eol,start

" Set Swap directory.
set directory=~/.vim/swap

" Read/write a .viminfo file, don't store more than 50 lines of registers.
set viminfo='20,\"50

" Maximum of five modelines.
set modelines=5

" Make xterm inherit VIM title, using the deafult titlestring.
set title

"Auto indentação"
set ai

" Switch syntax highlighting on.
syntax on

" Use Q for formatting.
map Q gq

" List buffers with B.
map B :buffers<CR>

" Show/Hide hidden Chars.
map <silent> <F2> :set invlist invnumber<CR>

" Show/Hide found pattern (After search).
map <silent> <F3> :set invhlsearch<CR>

" Line wrap toggle.
map <silent> <F4> :set wrap!<CR>

" Remove whitespace from end of lines.
map <silent> <F5> :%s/\s\+$//g<CR>

" Replace tabs with spaces.
map <silent> <F6> :%s/\t/        /g<CR>

" Novas atribuições em teste

set incsearch

set magic               " usa 'magia' ao procurar texto =)

set laststatus=1        " mostra sempre a statusbar com o nome do ficheiro



set smarttab                   "Tabulacao inteligente
set smartindent
set autoindent
set ts=4                          " Tab = 4 brancos
set shiftwidth=4              "Quando o autoindent faz um tab, ele é do tamanho de 4
set softtabstop=4            "Tecla Backspace volta 4 espaços quando estiver numa identação
set sm                            " mostra o ultimo par de parenteses fechados
set wildmode=longest,list       " mostra completacoes ao usar o TAB

set tb=



set showmode
set showcmd                     " mostra comando incomletos (marcar caracter, etc)
set shortmess=atI               " mensagens abreviadas
set et sm js
set nowrap

"====== complementação de palavras ====
"usa o tab em modo insert para completar palavras
function! InsertTabWrapper(direction)
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    elseif "backward" == a:direction
        return "\<c-p>"
    else
        return "\<c-n>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr>
