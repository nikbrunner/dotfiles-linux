let g:gruvbox_contrast_dark="hard"

let g:nord_bold = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1

augroup nord-theme-overrides
  autocmd!
  " Use 'nord7' as foreground color for Vim comment titles.
  autocmd ColorScheme nord hi vimCommentTitle ctermfg=14 guifg=#8FBCBB
augroup END

" hi Normal            guibg=NONE                  ctermbg=NONE
" hi TabLineFill       guibg=NONE                  ctermfg=NONE  ctermbg=NONE      cterm=NONE
" hi TabLine           guibg=NONE                  ctermfg=NONE  ctermbg=NONE      cterm=NONE
" hi TabLineSel        guibg=Yellow guifg=#8fbcbb  ctermfg=Black ctermbg=NONE    cterm=NONE
" hi SignColumn        guibg=NONE
" hi Comment                                                      cterm=italic
" hi Conditional                                                  cterm=italic,bold
" hi VertSplit         guibg=NONE guifg=#8fbcbb

" Switching themes
map <F5>             :colorscheme gruvbox <bar> let g:airline_theme='gruvbox' <bar> set background=dark<CR>
map <F6>             :colorscheme nord    <bar> let g:airline_theme='nord'    <bar> set background=dark<CR>

colorscheme gruvbox
