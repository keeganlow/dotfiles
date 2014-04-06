" Vim syntax file
" Language:	GNU Octave
" Maintainer:	Søren Hauberg <hauberg@gmail.com>
" Last Change:	17 Mar 2005

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the Matlab syntax to start with
if version < 600
  so <sfile>:p:h/matlab.vim
else
  runtime! syntax/matlab.vim
  unlet b:current_syntax
endif

" String (Octave also uses double quotes)
syn region octaveString			start=+"+ end=+"+	oneline

" Exceptions
syn keyword octaveExceptions       try catch end_try_catch

" Comments (Octave also uses # for comments)
syn match octaveComment            "#.*$"  contains=matlabTodo,matlabTab

" The extra end's
syn keyword octaveConditional      endif
syn keyword octaveRepeat           endfor endwhile
syn keyword octaveFunction         endfunction
syn keyword octaveLabel            endswitch

" The ! (not)
syn match octaveLogicalOperator         "!"

" Some extra functions
syn keyword octaveFunctions        warning 


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_octave_syntax_inits")
  if version < 508
    let did_octave_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink octaveString              String
  HiLink octaveExceptions          Exception
  HiLink octaveComment             Comment
  HiLink octaveConditional         Conditional
  HiLink octaveRepeat              Repeat
  HiLink octaveFunction            Function
  HiLink octaveLogicalOperator     Operator
  HiLink octaveFunctions           Function
  HiLink octaveLabel               Label
  
  delcommand HiLink
endif

let b:current_syntax = "octave"

"EOF	vim: ts=8 noet tw=100 sw=8 sts=0
