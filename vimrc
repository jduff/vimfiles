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
"colorscheme evening

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

inoremap <F13> <c-o>$<tab># DEBUG FIXME

" Printing options
set printoptions=duplex:long,paper:letter
