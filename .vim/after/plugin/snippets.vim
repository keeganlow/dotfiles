"call ExtractSnipsFile(g:snippets_dir.'ruby.snippets', 'ruby')
"call ExtractSnipsFile(g:snippets_dir.'other_ruby.snippets', 'ruby')

ino <C-Space> <c-r>=TriggerSnippet()<cr>
snor <C-Space> <esc>i<right><c-r>=TriggerSnippet()<cr>
