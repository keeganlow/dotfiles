" Here's a shorter script that displays a sample of all 256 cterm colors, by
" appending to the current buffer:
"
" Save this as e.g. color_demo.vim, then do :so color_demo.vim from any
" buffer.
let num = 255
while num >= 0
    exec 'hi col_'.num.' ctermbg='.num.' ctermfg=white'
    exec 'syn match col_'.num.' "ctermbg='.num.':...." containedIn=ALL'
    call append(0, 'ctermbg='.num.':....')
    let num = num - 1
endwhile
