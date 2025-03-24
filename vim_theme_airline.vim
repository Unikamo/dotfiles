" =============================================================================
" Filename:
" /home/foxtrot/.vim/plugged/vim-airline-themes/autoload/airline/themes/catppuccin_custom.vim
" Author: Updated by Foxtrot; original author is tilmaneggers
" License: MIT License
" Last Change: 2025/03/24
"
" =============================================================================

" Original theme colors
let s:rosewater = "#c5c8c6"
let s:flamingo = "#c5c8c6"
let s:pink = "#c6a0f6"
let s:mauve = "#C6A0F6"
let s:red = "#be4354"
let s:maroon = "#d76878"
let s:peach = "#eb9566"
let s:yellow = "#f0c46f"
let s:green = "#82be6f"
let s:teal = "#8BD5CA"
let s:sky = "#78a3c7"
let s:sapphire = "#78a3c7"
let s:blue = "#7392d1"
let s:lavender = "#b294bb"
"
let s:text = "#cad3f5"
let s:subtext1 = "#434657"
let s:subtext0 = "#8087a2"
let s:overlay2 = "#8087a2"
let s:overlay1 = "#8087a2"
let s:overlay0 = "#8087a2"
let s:surface2 = "#434657"
let s:surface1 = "#434657"
let s:surface0 = "#434657"
"
let s:base = "#191921"
let s:mantle = "#191921"
let s:crust = "#191921"

" Normal mode
" (Dark)
let s:N1 = [ s:mantle , s:blue , 59  , 149 ] " guifg guibg ctermfg ctermbg
let s:N2 = [ s:blue , s:surface1 , 149 , 59  ] " guifg guibg ctermfg ctermbg
let s:N3 = [ s:text , s:base , 145 , 16  ] " guifg guibg ctermfg ctermbg

" Insert mode
let s:I1 = [ s:mantle , s:teal , 59  , 74  ] " guifg guibg ctermfg ctermbg
let s:I2 = [ s:teal , s:mantle , 74  , 59  ] " guifg guibg ctermfg ctermbg
let s:I3 = [ s:text , s:base , 145 , 16  ] " guifg guibg ctermfg ctermbg

" Visual mode
let s:V1 = [ s:mantle , s:mauve , 59  , 209 ] " guifg guibg ctermfg ctermbg
let s:V2 = [ s:mauve , s:mantle , 209 , 59  ] " guifg guibg ctermfg ctermbg
let s:V3 = [ s:text , s:base , 145 , 16  ] " guifg guibg ctermfg ctermbg

" Replace mode
let s:RE = [ s:mantle , s:red , 59  , 203 ] " guifg guibg ctermfg ctermbg

" Warning section
let s:WR = [s:mantle ,s:peach , 232, 166 ]


let g:airline#themes#catppuccin_custom#palette = {}

let g:airline#themes#catppuccin_custom#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#catppuccin_custom#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#catppuccin_custom#palette.insert_replace = {
	\ 'airline_a': [ s:RE[0]   , s:I1[1]   , s:RE[1]   , s:I1[3]   , ''     ] }

let g:airline#themes#catppuccin_custom#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let g:airline#themes#catppuccin_custom#palette.replace = copy(g:airline#themes#catppuccin_custom#palette.normal)
let g:airline#themes#catppuccin_custom#palette.replace.airline_a = [ s:RE[0] , s:RE[1] , s:RE[2] , s:RE[3] , '' ]

let s:IA = [ s:N1[1] , s:N3[1] , s:N1[3] , s:N3[3] , '' ]
let g:airline#themes#catppuccin_custom#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

let g:airline#themes#catppuccin_custom#palette.normal.airline_warning = s:WR
let g:airline#themes#catppuccin_custom#palette.insert.airline_warning = s:WR
let g:airline#themes#catppuccin_custom#palette.visual.airline_warning = s:WR
