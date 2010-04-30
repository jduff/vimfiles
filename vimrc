syntax on
set ruler
set showcmd
set showmatch
set backspace=2
set laststatus=2
set modeline
set modelines=3
set nohlsearch
set number
set listchars=eol:$,tab:>-
set lines=80 columns=130
" http://items.sjbach.com/319/configuring-vim-right
set history=1000
set wildmode=list:longest
set ignorecase
set smartcase
set scrolloff=3
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set shortmess=atI
set visualbell


nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>


"colorscheme zellner
colorscheme railscasts
"colorscheme sunburst

autocmd FileType * set tabstop=4 shiftwidth=4 softtabstop=4 expandtab autoindent
autocmd FileType ruby,html,xml,xsl,eruby,yaml,treetop set tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent
autocmd FileType html,xml,xsl,php,jsp,eruby let b:closetag_html_style=1
autocmd FileType html,xml,xsl,php,jsp,eruby source ~/.vim/scripts/closetag.vim
autocmd BufRead,BufNewFile *.vm set filetype=velocity
autocmd BufRead,BufNewFile *.rhtml,*.html.erb set filetype=eruby
autocmd BufRead,BufNewFile *.treetop set filetype=treetop
autocmd FileType hl7 source ~/.vim/scripts/hl7-status.vim

" Highlight trailing whitespace
autocmd FileType * highlight WhitespaceEOL ctermbg=red guibg=red
autocmd FileType * match WhitespaceEOL /\s\+$/

let mapleader = ","

inoremap <F13> <c-o>$<tab># DEBUG FIXME

map <F6> :NERDTreeToggle<cr>
map ` :NERDTreeToggle<cr>

map <leader>t :FuzzyFinderTextMate<CR>

" Simple find that uses vimgrep to search all project files
function! FindInProject()
  let pattern = input('Enter search pattern: ')

  execute ':vimgrep ' . pattern . ' **'
endfunction


map <leader>f :call FindInProject()<CR>
" previous vimgrep result
map <leader>[ :cp
" next vimgrep result
map <leader>] :cn

" Printing options
set printoptions=duplex:long,paper:letter

function! ToggleScratch()
  if expand('%') == g:ScratchBufferName
    quit
  else
    Sscratch
  endif
endfunction

map <leader>s :call ToggleScratch()<CR>

