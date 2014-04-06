" This scheme was created by CSApproxSnapshot
" on Tue, 02 Nov 2010

hi clear
if exists("syntax_on")
    syntax reset
endif

if v:version < 700
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
else
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" <q-args>
endif

if 0
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_konsole") && g:CSApprox_konsole) || &term =~? "^konsole"
    CSAHi Normal term=NONE cterm=NONE ctermbg=230 ctermfg=238 gui=NONE guibg=#fff4e8 guifg=#404040
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=31 gui=NONE guibg=bg guifg=#0090a0
    CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=131 gui=bold guibg=bg guifg=#b06c58
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=21 gui=underline guibg=bg guifg=blue
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=bg
    CSAHi Error term=reverse cterm=bold ctermbg=63 ctermfg=231 gui=bold guibg=#4040ff guifg=#f8f8f8
    CSAHi Todo term=NONE cterm=bold,underline ctermbg=bg ctermfg=33 gui=bold,underline guibg=bg guifg=#0080f0
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=33 gui=NONE guibg=bg guifg=#0080ff
    CSAHi NonText term=bold cterm=bold ctermbg=224 ctermfg=131 gui=bold guibg=#ffe4d4 guifg=#a05040
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=63 gui=NONE guibg=bg guifg=#7050ff
    CSAHi ErrorMsg term=NONE cterm=bold ctermbg=63 ctermfg=231 gui=bold guibg=#4040ff guifg=#f8f8f8
    CSAHi IncSearch term=reverse cterm=underline ctermbg=185 ctermfg=238 gui=underline guibg=#e0e040 guifg=#404040
    CSAHi Search term=reverse cterm=NONE ctermbg=219 ctermfg=59 gui=NONE guibg=#f0c0ff guifg=#544060
    CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=31 gui=NONE guibg=bg guifg=#0090a0
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#d06000
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=180 gui=NONE guibg=bg guifg=#e0b090
    CSAHi CursorIM term=NONE cterm=NONE ctermbg=99 ctermfg=231 gui=NONE guibg=#8040ff guifg=#ffffff
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=30 gui=undercurl guibg=bg guifg=fg guisp=DarkCyan
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=219 ctermfg=fg gui=NONE guibg=LightMagenta guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=238 ctermfg=230 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=252 ctermfg=fg gui=underline guibg=LightGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=238 ctermfg=230 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=93 gui=NONE guibg=bg guifg=#8000ff
    CSAHi StatusLine term=reverse,bold cterm=bold ctermbg=95 ctermfg=231 gui=bold guibg=#904838 guifg=#f8f8f8
    CSAHi StatusLineNC term=reverse cterm=bold ctermbg=95 ctermfg=145 gui=bold guibg=#904838 guifg=#c0b0a0
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=95 ctermfg=231 gui=NONE guibg=#904838 guifg=#f8f8f8
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=238 gui=bold guibg=bg guifg=fg
    CSAHi Visual term=reverse cterm=NONE ctermbg=217 ctermfg=94 gui=NONE guibg=#ffc0a0 guifg=#804020
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=bold ctermbg=63 ctermfg=231 gui=bold guibg=#4040ff guifg=#f8f8f8
    CSAHi WildMenu term=NONE cterm=bold ctermbg=203 ctermfg=231 gui=bold guibg=#ff3030 guifg=#f8f8f8
    CSAHi Folded term=NONE cterm=NONE ctermbg=217 ctermfg=95 gui=NONE guibg=#ffc0a0 guifg=#804030
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=217 ctermfg=fg gui=NONE guibg=LightRed guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=33 ctermfg=231 gui=NONE guibg=#0080f0 guifg=#ffffff
    CSAHi lCursor term=NONE cterm=NONE ctermbg=99 ctermfg=231 gui=NONE guibg=#8040ff guifg=#ffffff
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=51 ctermfg=fg gui=NONE guibg=Cyan guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#ff5050
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=29 gui=NONE guibg=bg guifg=#00884c
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=99 gui=NONE guibg=bg guifg=#8040f0
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=#b07800
    CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=107 gui=bold guibg=bg guifg=#80a030
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=224 ctermfg=131 gui=NONE guibg=#f8d8c4 guifg=#a05040
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=193 ctermfg=196 gui=NONE guibg=#eaf2b0 guifg=#ff2020
    CSAHi DiffChange term=bold cterm=NONE ctermbg=158 ctermfg=29 gui=NONE guibg=#c0f0d0 guifg=#208040
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=193 ctermfg=196 gui=NONE guibg=#eaf2b0 guifg=#ff2020
    CSAHi DiffText term=reverse cterm=NONE ctermbg=153 ctermfg=25 gui=NONE guibg=#c0d0f0 guifg=#2850a0
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=18 gui=NONE guibg=Grey guifg=DarkBlue
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=DarkGrey guifg=LightGrey
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=Blue
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=Magenta
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
    CSAHi Normal term=NONE cterm=NONE ctermbg=230 ctermfg=238 gui=NONE guibg=#fff4e8 guifg=#404040
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=31 gui=NONE guibg=bg guifg=#0090a0
    CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=131 gui=bold guibg=bg guifg=#b06c58
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=21 gui=underline guibg=bg guifg=blue
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=bg
    CSAHi Error term=reverse cterm=bold ctermbg=63 ctermfg=231 gui=bold guibg=#4040ff guifg=#f8f8f8
    CSAHi Todo term=NONE cterm=bold,underline ctermbg=bg ctermfg=33 gui=bold,underline guibg=bg guifg=#0080f0
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=33 gui=NONE guibg=bg guifg=#0080ff
    CSAHi NonText term=bold cterm=bold ctermbg=224 ctermfg=131 gui=bold guibg=#ffe4d4 guifg=#a05040
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=63 gui=NONE guibg=bg guifg=#7050ff
    CSAHi ErrorMsg term=NONE cterm=bold ctermbg=63 ctermfg=231 gui=bold guibg=#4040ff guifg=#f8f8f8
    CSAHi IncSearch term=reverse cterm=underline ctermbg=185 ctermfg=238 gui=underline guibg=#e0e040 guifg=#404040
    CSAHi Search term=reverse cterm=NONE ctermbg=219 ctermfg=59 gui=NONE guibg=#f0c0ff guifg=#544060
    CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=31 gui=NONE guibg=bg guifg=#0090a0
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#d06000
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=180 gui=NONE guibg=bg guifg=#e0b090
    CSAHi CursorIM term=NONE cterm=NONE ctermbg=99 ctermfg=231 gui=NONE guibg=#8040ff guifg=#ffffff
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=30 gui=undercurl guibg=bg guifg=fg guisp=DarkCyan
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=219 ctermfg=fg gui=NONE guibg=LightMagenta guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=238 ctermfg=230 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=252 ctermfg=fg gui=underline guibg=LightGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=238 ctermfg=230 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=93 gui=NONE guibg=bg guifg=#8000ff
    CSAHi StatusLine term=reverse,bold cterm=bold ctermbg=95 ctermfg=231 gui=bold guibg=#904838 guifg=#f8f8f8
    CSAHi StatusLineNC term=reverse cterm=bold ctermbg=95 ctermfg=145 gui=bold guibg=#904838 guifg=#c0b0a0
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=95 ctermfg=231 gui=NONE guibg=#904838 guifg=#f8f8f8
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=238 gui=bold guibg=bg guifg=fg
    CSAHi Visual term=reverse cterm=NONE ctermbg=217 ctermfg=94 gui=NONE guibg=#ffc0a0 guifg=#804020
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=bold ctermbg=63 ctermfg=231 gui=bold guibg=#4040ff guifg=#f8f8f8
    CSAHi WildMenu term=NONE cterm=bold ctermbg=203 ctermfg=231 gui=bold guibg=#ff3030 guifg=#f8f8f8
    CSAHi Folded term=NONE cterm=NONE ctermbg=217 ctermfg=95 gui=NONE guibg=#ffc0a0 guifg=#804030
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=217 ctermfg=fg gui=NONE guibg=LightRed guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=33 ctermfg=231 gui=NONE guibg=#0080f0 guifg=#ffffff
    CSAHi lCursor term=NONE cterm=NONE ctermbg=99 ctermfg=231 gui=NONE guibg=#8040ff guifg=#ffffff
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=51 ctermfg=fg gui=NONE guibg=Cyan guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#ff5050
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=29 gui=NONE guibg=bg guifg=#00884c
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=99 gui=NONE guibg=bg guifg=#8040f0
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=#b07800
    CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=107 gui=bold guibg=bg guifg=#80a030
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=224 ctermfg=131 gui=NONE guibg=#f8d8c4 guifg=#a05040
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=193 ctermfg=196 gui=NONE guibg=#eaf2b0 guifg=#ff2020
    CSAHi DiffChange term=bold cterm=NONE ctermbg=158 ctermfg=29 gui=NONE guibg=#c0f0d0 guifg=#208040
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=193 ctermfg=196 gui=NONE guibg=#eaf2b0 guifg=#ff2020
    CSAHi DiffText term=reverse cterm=NONE ctermbg=153 ctermfg=25 gui=NONE guibg=#c0d0f0 guifg=#2850a0
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=18 gui=NONE guibg=Grey guifg=DarkBlue
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=DarkGrey guifg=LightGrey
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=Blue
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=Magenta
elseif has("gui_running") || &t_Co == 256
    CSAHi Normal term=NONE cterm=NONE ctermbg=230 ctermfg=238 gui=NONE guibg=#fff4e8 guifg=#404040
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=31 gui=NONE guibg=bg guifg=#0090a0
    CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=131 gui=bold guibg=bg guifg=#b06c58
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=21 gui=underline guibg=bg guifg=blue
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=bg
    CSAHi Error term=reverse cterm=bold ctermbg=63 ctermfg=231 gui=bold guibg=#4040ff guifg=#f8f8f8
    CSAHi Todo term=NONE cterm=bold,underline ctermbg=bg ctermfg=33 gui=bold,underline guibg=bg guifg=#0080f0
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=33 gui=NONE guibg=bg guifg=#0080ff
    CSAHi NonText term=bold cterm=bold ctermbg=224 ctermfg=131 gui=bold guibg=#ffe4d4 guifg=#a05040
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=63 gui=NONE guibg=bg guifg=#7050ff
    CSAHi ErrorMsg term=NONE cterm=bold ctermbg=63 ctermfg=231 gui=bold guibg=#4040ff guifg=#f8f8f8
    CSAHi IncSearch term=reverse cterm=underline ctermbg=185 ctermfg=238 gui=underline guibg=#e0e040 guifg=#404040
    CSAHi Search term=reverse cterm=NONE ctermbg=219 ctermfg=59 gui=NONE guibg=#f0c0ff guifg=#544060
    CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=31 gui=NONE guibg=bg guifg=#0090a0
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=bg ctermfg=166 gui=NONE guibg=bg guifg=#d06000
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=180 gui=NONE guibg=bg guifg=#e0b090
    CSAHi CursorIM term=NONE cterm=NONE ctermbg=99 ctermfg=231 gui=NONE guibg=#8040ff guifg=#ffffff
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=30 gui=undercurl guibg=bg guifg=fg guisp=DarkCyan
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=219 ctermfg=fg gui=NONE guibg=LightMagenta guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=238 ctermfg=230 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=252 ctermfg=fg gui=underline guibg=LightGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=238 ctermfg=230 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=93 gui=NONE guibg=bg guifg=#8000ff
    CSAHi StatusLine term=reverse,bold cterm=bold ctermbg=95 ctermfg=231 gui=bold guibg=#904838 guifg=#f8f8f8
    CSAHi StatusLineNC term=reverse cterm=bold ctermbg=95 ctermfg=145 gui=bold guibg=#904838 guifg=#c0b0a0
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=95 ctermfg=231 gui=NONE guibg=#904838 guifg=#f8f8f8
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=238 gui=bold guibg=bg guifg=fg
    CSAHi Visual term=reverse cterm=NONE ctermbg=217 ctermfg=94 gui=NONE guibg=#ffc0a0 guifg=#804020
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=bold ctermbg=63 ctermfg=231 gui=bold guibg=#4040ff guifg=#f8f8f8
    CSAHi WildMenu term=NONE cterm=bold ctermbg=203 ctermfg=231 gui=bold guibg=#ff3030 guifg=#f8f8f8
    CSAHi Folded term=NONE cterm=NONE ctermbg=217 ctermfg=95 gui=NONE guibg=#ffc0a0 guifg=#804030
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=217 ctermfg=fg gui=NONE guibg=LightRed guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=33 ctermfg=231 gui=NONE guibg=#0080f0 guifg=#ffffff
    CSAHi lCursor term=NONE cterm=NONE ctermbg=99 ctermfg=231 gui=NONE guibg=#8040ff guifg=#ffffff
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=51 ctermfg=fg gui=NONE guibg=Cyan guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#ff5050
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=29 gui=NONE guibg=bg guifg=#00884c
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=99 gui=NONE guibg=bg guifg=#8040f0
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=#b07800
    CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=107 gui=bold guibg=bg guifg=#80a030
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=224 ctermfg=131 gui=NONE guibg=#f8d8c4 guifg=#a05040
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=193 ctermfg=196 gui=NONE guibg=#eaf2b0 guifg=#ff2020
    CSAHi DiffChange term=bold cterm=NONE ctermbg=158 ctermfg=29 gui=NONE guibg=#c0f0d0 guifg=#208040
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=193 ctermfg=196 gui=NONE guibg=#eaf2b0 guifg=#ff2020
    CSAHi DiffText term=reverse cterm=NONE ctermbg=153 ctermfg=25 gui=NONE guibg=#c0d0f0 guifg=#2850a0
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=18 gui=NONE guibg=Grey guifg=DarkBlue
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=DarkGrey guifg=LightGrey
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=Blue
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=Magenta
elseif has("gui_running") || &t_Co == 88
    CSAHi Normal term=NONE cterm=NONE ctermbg=79 ctermfg=80 gui=NONE guibg=#fff4e8 guifg=#404040
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#0090a0
    CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=53 gui=bold guibg=bg guifg=#b06c58
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=19 gui=underline guibg=bg guifg=blue
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=79 gui=NONE guibg=bg guifg=bg
    CSAHi Error term=reverse cterm=bold ctermbg=19 ctermfg=79 gui=bold guibg=#4040ff guifg=#f8f8f8
    CSAHi Todo term=NONE cterm=bold,underline ctermbg=bg ctermfg=23 gui=bold,underline guibg=bg guifg=#0080f0
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=23 gui=NONE guibg=bg guifg=#0080ff
    CSAHi NonText term=bold cterm=bold ctermbg=74 ctermfg=36 gui=bold guibg=#ffe4d4 guifg=#a05040
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=39 gui=NONE guibg=bg guifg=#7050ff
    CSAHi ErrorMsg term=NONE cterm=bold ctermbg=19 ctermfg=79 gui=bold guibg=#4040ff guifg=#f8f8f8
    CSAHi IncSearch term=reverse cterm=underline ctermbg=56 ctermfg=80 gui=underline guibg=#e0e040 guifg=#404040
    CSAHi Search term=reverse cterm=NONE ctermbg=75 ctermfg=33 gui=NONE guibg=#f0c0ff guifg=#544060
    CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#0090a0
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#d06000
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=57 gui=NONE guibg=bg guifg=#e0b090
    CSAHi CursorIM term=NONE cterm=NONE ctermbg=35 ctermfg=79 gui=NONE guibg=#8040ff guifg=#ffffff
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=DarkCyan
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=75 ctermfg=fg gui=NONE guibg=LightMagenta guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=85 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=85 ctermfg=fg gui=NONE guibg=Grey guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=80 ctermfg=79 gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=86 ctermfg=fg gui=underline guibg=LightGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=80 ctermfg=79 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=87 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=87 ctermfg=fg gui=NONE guibg=Grey90 guifg=fg
    CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=35 gui=NONE guibg=bg guifg=#8000ff
    CSAHi StatusLine term=reverse,bold cterm=bold ctermbg=36 ctermfg=79 gui=bold guibg=#904838 guifg=#f8f8f8
    CSAHi StatusLineNC term=reverse cterm=bold ctermbg=36 ctermfg=57 gui=bold guibg=#904838 guifg=#c0b0a0
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=36 ctermfg=79 gui=NONE guibg=#904838 guifg=#f8f8f8
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=80 gui=bold guibg=bg guifg=fg
    CSAHi Visual term=reverse cterm=NONE ctermbg=73 ctermfg=32 gui=NONE guibg=#ffc0a0 guifg=#804020
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=bold ctermbg=19 ctermfg=79 gui=bold guibg=#4040ff guifg=#f8f8f8
    CSAHi WildMenu term=NONE cterm=bold ctermbg=64 ctermfg=79 gui=bold guibg=#ff3030 guifg=#f8f8f8
    CSAHi Folded term=NONE cterm=NONE ctermbg=73 ctermfg=32 gui=NONE guibg=#ffc0a0 guifg=#804030
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=74 ctermfg=fg gui=NONE guibg=LightRed guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=23 ctermfg=79 gui=NONE guibg=#0080f0 guifg=#ffffff
    CSAHi lCursor term=NONE cterm=NONE ctermbg=35 ctermfg=79 gui=NONE guibg=#8040ff guifg=#ffffff
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=31 ctermfg=fg gui=NONE guibg=Cyan guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=69 gui=NONE guibg=bg guifg=#ff5050
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#00884c
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=35 gui=NONE guibg=bg guifg=#8040f0
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#b07800
    CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=36 gui=bold guibg=bg guifg=#80a030
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=74 ctermfg=36 gui=NONE guibg=#f8d8c4 guifg=#a05040
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=78 ctermfg=64 gui=NONE guibg=#eaf2b0 guifg=#ff2020
    CSAHi DiffChange term=bold cterm=NONE ctermbg=62 ctermfg=20 gui=NONE guibg=#c0f0d0 guifg=#208040
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=78 ctermfg=64 gui=NONE guibg=#eaf2b0 guifg=#ff2020
    CSAHi DiffText term=reverse cterm=NONE ctermbg=59 ctermfg=21 gui=NONE guibg=#c0d0f0 guifg=#2850a0
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=85 ctermfg=17 gui=NONE guibg=Grey guifg=DarkBlue
    CSAHi Conceal term=NONE cterm=NONE ctermbg=84 ctermfg=86 gui=NONE guibg=DarkGrey guifg=LightGrey
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=64 gui=undercurl guibg=bg guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=19 gui=undercurl guibg=bg guifg=fg guisp=Blue
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=67 gui=undercurl guibg=bg guifg=fg guisp=Magenta
endif

if 1
    delcommand CSAHi
endif
