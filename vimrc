call pathogen#infect()

set number

syntax enable
set background=dark
colorscheme solarized

let g:slime_target = "tmux"
let b:slime_config = {"socket_name": "default", "target_pane": ":"}

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

map gw <C-W>w
map gf G
map gh ^
map ge $

:imap <tab> <c-p>
:imap <S-tab> <c-n>
:set shiftwidth=2
:set tabstop=2
:set expandtab
if has("autocmd")
  filetype indent on
endif

vmap tt <c-c><c-c>
nmap tt V%<c-c><c-c>
nmap td ttgvd

" fix :Glog and :Ggrep to actually use a quickfix window
autocmd QuickFixCmdPost *grep* cwindow

"display tabs and trailing spaces
set list
set listchars=tab:\|_,trail:⋅
