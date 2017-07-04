" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'edkolev/tmuxline.vim' "leave this commented out unless changing theme
Plugin 'benmills/vimux'
"Plugin 'pgr0ss/vimux-ruby-test'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tommcdo/vim-fugitive-blame-ext'
Plugin 'kana/vim-arpeggio'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/ruby-matchit'
Plugin 'fatih/vim-go'
"Plugin 'elixir-lang/vim-elixir'
Plugin 'groenewege/vim-less'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'mtscout6/vim-cjsx'
Plugin 'slim-template/vim-slim'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'hashivim/vim-terraform'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'kylef/apiblueprint.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'machakann/vim-highlightedyank'
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'kassio/neoterm'
Plugin 'janko-m/vim-test'

Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mattn/emmet-vim'
"Plugin 'sbdchd/neoformat'
Plugin 'mitermayer/vim-prettier'

call vundle#end()            " required

" set 256 colors
set t_Co=256

color muon

" Make the mouse (*gasp*) usable on large screens
if !has("nvim")
  if has("mouse_sgr")
      set ttymouse=sgr
  else
      set ttymouse=xterm2
  end
end

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

set colorcolumn=81

" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue"
set cmdheight=2

set encoding=utf-8
set expandtab

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" This stops Vim from redrawing the screen during complex operations and results
" in much smoother looking plugins.
set lazyredraw

" Always display the status line, even if only one window is displayed
set laststatus=2

" display unprintable characters
set list

" Use textmate-style whitespace characters
set listchars=tab:▸\ ,eol:¬

" Enable use of the mouse for all modes - helpful for resizing buffers
set mouse=a

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" show line numbers by default
set relativenumber
set number

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Add git branch to statusline
set statusline=%F\ %m\ %{fugitive#statusline()}\ %y%=%l,%c\ %P

" INDENTATION OPTIONS
" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set softtabstop=2 " insert mode tab and backspace use 2 spaces
set shiftwidth=2 " normal mode indentation commands use 2 spaces

set showtabline=2 " always show tab bar

" enables bash aliases from vim shell
set shell=bash
" this allows you to use bash aliases from the vim shell
" sadly, it breaks fugitive's git patch which is really nice
" set shellcmdflag=-ic

" Show partial commands in the last line of the screen
set showcmd

" case-sensitive search if any caps
set smartcase

" spell check comments
set spell

" if opening a file from :ls, :buffers, :files, etc. jump to open version
" of the file, if one exists
set switchbuf=useopen

" And reset the terminal code for the visual bell.  If visualbell is set, and
" this line is also included, vim will neither flash nor beep.  If visualbell
" is unset, this does nothing.
set t_vb=

" Allow an unusually high tab limit - helpful for ':tab ball' with a huge
" buffer list
set tabpagemax=200

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Better command-line completion
set wildmenu
set wildmode=longest,list,full

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =


" Fix Cursor in TMUX
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

let mapleader = ","

" Use ctrl-[hjkl] to move focus between splits!
" NOTE: https://github.com/christoomey/vim-tmux-navigator now takes care of this
"nmap <silent> <c-k> :wincmd k<CR>
"nmap <silent> <c-j> :wincmd j<CR>
"nmap <silent> <c-h> :wincmd h<CR>
"nmap <silent> <c-l> :wincmd l<CR>

" vv to generate new vertical split
nnoremap <silent> vv <C-w>v

" save left pinky - map minus sign to colon!
nore - :

" Gitv settings:
" do not allow gitv to generate control key mappings
" as these collide with the above
let g:Gitv_DoNotMapCtrlKey = 1
nmap <leader>gv :Gitv --all<cr>
nmap <leader>gV :Gitv! --all<cr>
vmap <leader>gV :Gitv! --all<cr>

" manage working dir:  the nearest ancestor that contains a .git
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_max_height = 90
let g:ctrlp_max_depth = 40
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:90,results:90'

" tells snipmate to only use custom snippets
let g:snippets_dir = "~/.vim/snippets"

" used patched fonts for airline arrows/triangles
let g:airline_powerline_fonts=1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_close_button = 0

let g:airline_theme='molokai'

" quickly clear highlights
map <leader>n :noh<CR>

" quickly close quickfix
map <leader>C :ccl<CR><CR>

" quickly open a new tab
map <leader>t :tabnew<CR>

" no more pesky escape (for insert and visual mode)
imap kj <Esc>
imap kJ <Esc>
imap Kj <Esc>
imap KJ <Esc>

if has("nvim")
  tnoremap lkj <C-\><C-n>
  tnoremap <C-h> <C-\><C-n><C-w>h
  tnoremap <C-j> <C-\><C-n><C-w>j
  tnoremap <C-k> <C-\><C-n><C-w>k
  tnoremap <C-l> <C-\><C-n><C-w>l

  " TODO: add https://vi.stackexchange.com/a/3390

  " this will always put you in insert mode when you move to the terminal window
  " similar to tmux pane-based behavior
  autocmd BufWinEnter,WinEnter term://* startinsert


  " terminal mode specific settings
  autocmd TermOpen * setlocal nospell
endif

nmap <leader><space> :call whitespace#strip_trailing()<CR>

set clipboard=unnamed

" reload files when they change on disk (e.g., git checkout)
set autoread

" highlight whitespace symbols
hi NonText ctermfg=240 guifg=#666666

" trailing whitespace intentional
map <leader>a :Ag

nmap <leader>p :CtrlPClearAllCaches<CR>

nmap <leader>gb :Gblame<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gcm :Gcommit<CR>
nmap <leader>gco :!git checkout

" show only the current window and expand folds (handy after :Gdiff)
nmap <leader>o zR <bar> :only<CR><CR>

" regenerate the tags file, including project gems
map <Leader>rv :!ctags --tag-relative --exclude=.git --languages=ruby -R * `rvm gemdir`/gems/*<CR><CR>
map <Leader>rb :!ctags --tag-relative --exclude=.git --languages=ruby -R * `rbenv prefix`/*<CR><CR>

map <silent> <leader>so :source ~/.vimrc<CR>
map <leader>ev :tabedit ~/dotfiles/.vimrc<CR>
map <leader>et :tabedit ~/dotfiles/.tmux.conf<CR>
map <leader>df :tabedit ~/dotfiles/<CR>
map <leader>bs :! ~/dotfiles/bootstrap.sh<CR>

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  let g:ackprg = 'ag --nogroup --column'

  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" green/red diffs
highlight diffAdded guifg=#00bf00
highlight diffRemoved guifg=#bf0000

" Current line customization
" high light current line in insert mode
" Enable CursorLine
set cursorline
autocmd InsertEnter * highlight  CursorLine ctermbg=236 ctermfg=None
autocmd InsertLeave * highlight  CursorLine ctermbg=235 ctermfg=None

" configure vimux-ruby-test so ruby tests can run in 20% horizontal pane.
"let g:vimux_ruby_cmd_unit_test = "./bin/testunit"
let g:vimux_ruby_cmd_unit_test = "bundle exec ruby"
let g:vimux_ruby_cmd_all_tests = "rake test:parallel"

" Run the current file with testunit
map <Leader>Tf :call VimuxRunCommand("clear; bundle exec ruby " . bufname("%"))<CR>

" Run the current test
map <Leader>Ts :RunRubyFocusedTest<CR>

" Run all rails tests
map <Leader>Ta :RunAllRailsTests<CR>

" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>

" Close vim tmux runner opened by VimuxRunCommand
map <Leader>vq :VimuxCloseRunner<CR>

" Open vimux pane
map <Leader>vo :VimuxOpenPane<CR>

" Interrupt any command running in the runner pane
map <Leader>vx :VimuxInterruptRunner<CR>
"
" Function to make tmux zoom its runner pane.
function! VimuxZoomRunner()
  call VimuxInspectRunner()
  call system("tmux resize-pane -Z")
endfunction

" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>vz :call VimuxZoomRunner()<CR>

" music
nnoremap <leader>sn :silent :! spotify next<CR> :redraw!<CR>
nnoremap <leader>sb :silent :! spotify prev<CR> :redraw!<CR>

" Chords
call arpeggio#map('n', '', 0, 'ts', ':TestNearest<CR>')
call arpeggio#map('n', '', 0, 'tf', ':TestFile<CR>')
call arpeggio#map('n', '', 0, 'tq', ':call neoterm#close()<cr>')
call arpeggio#map('n', '', 0, 'to', ':call neoterm#open()<cr>')


" TODO: replace with neovim approaches
call arpeggio#map('n', '', 0, 'vl', ':VimuxRunLastCommand<CR>')
call arpeggio#map('n', '', 0, 'vp', ':VimuxPromptCommand<CR>')

" make test commands execute using dispatch.vim
"let test#strategy = "neoterm"
let test#strategy = "vimux"

let g:neoterm_position = 'vertical'
"let g:neoterm_automap_keys = ',tt'

" TODO: find mappings for these neoterm commands
"nnoremap <silent> <f10> :TREPLSendFile<cr>
"nnoremap <silent> <f9> :TREPLSendLine<cr>
"vnoremap <silent> <f9> :TREPLSendSelection<cr>

" Useful maps
" hide/close terminal
"nnoremap <silent> ,th :call neoterm#close()<cr>
" clear terminal
"nnoremap <silent> ,tl :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
"nnoremap <silent> ,tc :call neoterm#kill()<cr>



" nmap <silent> <leader>t :TestNearest<CR>
" nmap <silent> <leader>T :TestFile<CR>
" nmap <silent> <leader>a :TestSuite<CR>
" nmap <silent> <leader>l :TestLast<CR>
" nmap <silent> <leader>g :TestVisit<CR>


" Ugh, vim 7.4 doesn't indent the following by default - breaks shit
let g:html_indent_inctags = "html,body,head,tbody"

" use html highlighting for ejs
au BufNewFile,BufRead *.ejs set filetype=html

" golang stuff
autocmd FileType go setlocal nolist tabstop=4 shiftwidth=4 expandtab softtabstop=4

" make y$ not grab the line break - this may turn out to be a terrible idea :D
nmap $ g_

" prettier auto format
" when running at every change you may want to disable quickfix
let g:prettier#quickfix_enabled = 0

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.json,*.css,*.scss,*.less,*.graphql PrettierAsync
