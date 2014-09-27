
highlight ExtraWhitespace ctermbg=red guibg=LightRed
match ExtraWhitespace /\s\+$/
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
" Automatically delete trailing whitespace before saving.
" xxx: temporarily disable whilst working with other people's dodgy code.
"autocmd BufRead,BufWritePre,FileWritePre *
"    \ if ! &bin | silent! %s/\s\+$//ge | endif
