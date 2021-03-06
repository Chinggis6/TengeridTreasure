" GVim
" Tengerid Visual Editor
" set -x VISUAL 'gvim -p'

" colorscheme quantum
" colorscheme neodark
set background=dark
colorscheme solarized

" Remove Menubar and Toolbar

set guioptions -=m
set guioptions -=T

" Remove scroll bars

set guioptions -=r
set guioptions -=L

" No pop up dialogs
set go+=c

" Display emoji
" Untested
" Possibly only in macOS
" set guioptions +=E

" Disable cursor blinking

set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait0

" Smooth fonts
" GVim only
set antialias

" Make S-Ins work like in xterm
map! <S-Insert> <MiddleMouse>
