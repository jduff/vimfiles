syntax on
set ruler
set showmatch
set backspace=2
set laststatus=2
set modeline
set modelines=3
set nohlsearch
set number
set listchars=eol:$,tab:>-
colorscheme zellner

autocmd FileType * set tabstop=4 shiftwidth=4 softtabstop=4 expandtab autoindent
autocmd FileType ruby,html,xml,xsl set tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent
autocmd FileType html,xml,xsl,php,jsp let b:closetag_html_style=1
autocmd FileType html,xml,xsl,php,jsp source ~/.vim/scripts/closetag.vim

" Highlight trailing whitespace
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

inoremap <F13> <c-o>$<tab># DEBUG FIXME
