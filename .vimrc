" --- INTRO ---

" ------ --- ------
" +       +      +
" ------ --- ------
"
" Chinggis Tenger
" Vimmer, Archer, and Fisher
" The Son of Web
" Filius VVeborum
"
" ------ --- ------
" +       +       +
" ------ --- ------

" Vim 8.0
" Vim, Vi (Visual) Improved

" Tengerid Editor
" Perfecting my favorite editor and its configuration
" Vimcraft

" ---

" “No one constitutes as great a favor to me in the Environment of Linux as Vim ...
	"when the editors of text are mentioned, Vim is the guiding star.”

		"The Four Editors and Their Configuration,

			"Ibn Idrīs al-Shāfiʿī.

				"(aka sha256)

" ---

" Basic usage

" Deprive option
" :set nonumber

" Show option value
" :set number?

" Empty option of value (for non binary, un-toggled, valued options)
" :set indentexpr&

" Invert option's value
" : set invnumber

" Show all options
" :set

" Show all variables
" :let

" Show all Normal mode user-set key bindings
" :nmap

" Show all marks
" Marks are file bookmarks to save cursor position in buffers
" :marks

" Substitute by adding
" :%s/background/&-color

" Run command on all matching lines
" :%g/background/d

" Define commands
" User defined commands start with capital
" command MyCommand echo "Hello, World!"

" Modeline
" Append to the end to pass options
" #vim: ft=Markdown

" .vimrc is loaded before plugins
" Put code into
" ~/.vim/after/plugin/*.vim
" To run after plugins get loaded
" 1. Vimrc, 2. Plugins, 3. After directory

" Shortcuts

" - scrolloff
" H - home line
" M - middle line
" L - last line

" ] ^i - jump to the next word under cursor
" [ ^i - jump back (searching from BOF)

" " Normal mode paste
" ^r Insert mode paste
" Registers
" * - Primary selection
" + - Clipboard
" % - current file's name (pseudo-register)
" # - alternate file's name

" ^] jump in Help pages

" ^o temporarily switch to Normal Mode and then back after one command

" ^o/^i navigate through jumplist
" g;/g, navigate trough changelist

" Spelling
" Add word to dictionary
" zg - good word
" zG - good word (temporary)
" Remove word from dictionary
" zw - wrong word
" ZW - wrong word (temporary)

" gqip - reformat paragraph, make into one line
" vipJ - same in and through Visual Mode

" n - go to last search
" gn - go to last search and visually select it

" ]], [[ go to next/previous heading
" zj, zk go to next/previous fold (beginning of the fold)

" 1z= correct spelling (choosing first suggestion)

" I prepend to line
" A append to line
" | move to n-th column (character-wise)

" &option - option as set by `set` keyword
" &l:option - local option; option with a local scope, affecting only the buffer or split its set in
" @register, eg @" the unnamed register, primary selection; echo @"; let @a='hello' CTRL+R and "ap to paste from register a, or echo @a
" = expression register, ^r and expression including variables of any kind

" Insert mode
" C-h delete a character backward
" C-w delete a word backward
" C-u delete a line backward
" C-[ switch to normal mode

" See what plugin is remapping the key
" verbose map KEY
" verbose is a separate command to put before other commands for verbosity, getting more information

" iw - anywhere
" aw - whitespace

" <C-g> file (name), mod [+], lines (count), scroll (%) (same as 0<C-g>)
" 1<C-g> full path and the rest
" 2<C-g> buffer, full path, and so

" Use s instead of xi

" TIPS END

" --- ORTNI ---

" --- PLUGINS ---

" Vim-Plug minimalistic plugin manager

call plug#begin('~/.vim/plugged')

Plug 'zirrostig/vim-schlepp'

" Solarized colorscheme
Plug 'altercation/vim-colors-solarized'

" Language pack, 70+ packages
" Slows down a lot
" Fish iskeyword (-,_,.) and indentation frustrates
" Plug 'sheerun/vim-polyglot'

" gcc for commenting lines
Plug 'tpope/vim-commentary'

" yss, cs"', ysiw, ds" for surrounding text
Plug 'tpope/vim-surround'

" Provides file manipulation commands such as :Remove, :Rename, :Move, and :SudoWrite
Plug 'tpope/vim-eunuch'

" Nerdtree
Plug 'scrooloose/nerdtree'

" Vim wiki
" \ww to go to index.wiki
" Plug 'vimwiki/vimwiki'

" Verbose search
" Plug 'henrik/vim-indexed-search'

" Improved incremental searching
Plug 'haya14busa/incsearch.vim'

" Incremental fuzzy search extension
Plug 'haya14busa/incsearch-fuzzy.vim'

" Dependency of the below plugin
Plug 'kana/vim-operator-user'

" Flash yank area
" Visually flash the area yanked to the register/clipboard
Plug 'haya14busa/vim-operator-flashy'

" Star motions
Plug 'haya14busa/vim-asterisk'

" Powerline / Airline
" Mode | Git | File | Type | Charset | % | line/lines | column | trailing / mixed indentation
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Spacemacs key bindings for Vim
" https://github.com/meitham/vim-spacemacs
" Plug 'meitham/vim-spacemacs'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Alternative colorscheme
" Plug 'zeis/vim-kolor'

" Highlight i3 config file better
Plug 'PotatoesMaster/i3-vim-syntax'

" Highlight tmux config files better
Plug 'tmux-plugins/vim-tmux'

" Undo history tree
" :UndotreeToggle
Plug 'mbbill/undotree'

" Align tables well
" Plug 'godlygeek/tabular'

" Three plugins in one
" Abbreviations, Substitution, and Case conversion (called Coercion)
" crs snake case, crc camel case, crm mixed case, cru snake upper case
" supports Repeat.vim
" OneTwoThree
Plug 'tpope/vim-abolish'

" Markdown support
" ]] next header, [[ previous,  ][ next sibling, [] previous sibling, ]c current, ]u parent, :Tocv Contents
Plug 'plasticboy/vim-markdown'

" Fancy start screen
Plug 'mhinz/vim-startify'

" Fancy file icons
" Works with Nerd Tree
" For Gvim
Plug 'ryanoasis/vim-devicons'

" Dependency
Plug 'tpope/vim-unimpaired'
" Dired for Vim
" :Dirvish
Plug 'justinmk/vim-dirvish'

" Fugitive
" Git wrapper
Plug 'tpope/vim-fugitive'

" Inspired by Quantum theme
Plug 'KeitaNakamura/neodark.vim'

" Show buffer names in status line
Plug 'bling/vim-bufferline'

" Org mode support
Plug 'jceb/vim-orgmode'

" Highlight Nginx config files
Plug 'evanmiller/nginx-vim-syntax'

" Highlight log syntax
Plug 'dzeban/vim-log-syntax'

" Highlight Logrotate log files
Plug 'moon-musick/vim-logrotate'

" Highlight TomL config markup file type syntax
Plug 'cespare/vim-toml'

" Note taking and note management in Vim
Plug 'xolox/vim-misc'
" Plug 'xolox/vim-notes'

" Extended session management
" :OpenSession
Plug 'xolox/vim-session'

" Enhanced bookmarking
" Plug 'vim-scripts/TurboMark'

" Enhanced buffer listing
" :BufExplorer (with single f)
Plug 'jlanzarotta/bufexplorer'

" Scratch buffer
" :Scratch
Plug 'kana/vim-scratch'

" Tab completion
" Plug 'ervandew/supertab'

" Rich text highlight in Vim
Plug 'bpstahlman/txtfmt'

" Coffee script support
Plug 'kchmck/vim-coffee-script'

" Highlight Vimperator config file syntax
Plug 'vimperator/vimperator.vim'
autocmd FileType vimperator setlocal commentstring=\"\ %s

" Highlight trailing whitespace
Plug 'ntpeters/vim-better-whitespace'

" Show git status on Nerd Tree
Plug 'Xuyuanp/nerdtree-git-plugin'

" HTML tags and Latex support for %
" Plug 'tmhedberg/matchit'

"Better URLs
" Universal text linking
Plug 'vim-scripts/utl.vim'

" Narrow region plugin for Vim
" <leader>nr or :NR
" :WidenRegion to save back
Plug 'chrisbra/NrrwRgn'

" Color HEX codes or color names
" :ColorToggle
Plug 'chrisbra/Colorizer'
" Plug 'lilydjwg/colorizer'

" PKGBUILD syntax
Plug 'Firef0x/PKGBUILD.vim'

" Fish support (as separate file type)
" Already provided by Polyglot language pack
" Plug 'dag/vim-fish'

" Auto mkdir when saving
Plug 'pbrisbin/vim-mkdir'

" Dep
" Better increment, of dates etc
" 10<C-a> increments, 5<C-x> decrements
Plug 'tpope/vim-speeddating'

" Better repeating (.)
Plug 'tpope/vim-repeat'

" Better ~/.muttrc
Plug 'vim-scripts/muttrc.vim'

Plug 'junegunn/rainbow_parentheses.vim'

" colo gruvbox (bg=dark)
Plug 'morhetz/gruvbox'

Plug 'kshenoy/vim-signature'

Plug 'airblade/vim-gitgutter'

Plug 'junegunn/fzf.vim'

Plug 'pelodelfuego/vim-swoop'

" Plug 'w0rp/ale'

" Plug 'junegunn/vim-emoji'

" Smarter F and T with highlight
" Forget about ; to repeat
Plug 'rhysd/clever-f.vim'

" <leader>c<space> toggle comment
" <leader>cs sexy comment
" <leader>cu uncomment
" Plug 'scrooloose/nerdcommenter'

" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" Interactive scratchpad
" PHP support requires psysh
" Doesn't work on my Vim 8.0 (+job, +channel) but works on Nvim
" Plug 'metakirby5/codi.vim'

" Auto-completion
" Plug 'Valloric/YouCompleteMe'

" Spacemacs colorscheme for Vim
Plug 'colepeters/spacemacs-theme.vim'

" Gist
" git config --global github.user <user>
" :Gist -a
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
" Plug 'keith/gist.vim'

" Emmet
" HTML & CSS expansion
" Visual selection, ^y , and abbreviation
" Eg: ul>li*>span>a
Plug 'mattn/emmet-vim'

" Few more commands working with jump points
Plug 'kana/vim-exjumplist'
" Better view for :jumps
Plug 'thinca/vim-poslist'

" Highlight Task warrior config files syntax
" Change ftdetect/task.vim to "taskrc" if in .config/
Plug 'framallo/taskwarrior.vim'

" SearchUnicode - search for character
" UnicodeName - identify character under cursor
" UnicodeTabl - print table in new file
" ^x ^z - complete unicode character
" ^x ^g - complete digraph character
Plug 'chrisbra/unicode.vim'

" ctags
" Supported languages
" http://ctags.sourceforge.net/languages.html
" :TaggbarToggle
Plug 'majutsushi/tagbar'

" Command T
" <leader> t, b, j (jump to recently used files opening them in new buffers); ^c cancel, Tab to switch between prompt and list
" Plug 'wincent/command-t'

" ^p or :CtrlP
" Plug 'ctrlpvim/ctrlp.vim'

" Syntax checker and indicator
" Plug 'vim-syntastic/syntastic'

" Qt QML syntax highlight
Plug 'calincru/qml.vim'

" Highlights Wiki markup syntax
" Styles wiki links removing surrounding brackets
Plug 'chikamichi/mediawiki.vim'

" JUNEGUNN!!!!!!! This guy rocks!
" Hero of Vim
" ga to align
Plug 'junegunn/vim-easy-align'

" Plug 'joshdick/onedark.vim'

" Plug 'chriskempson/base16-vim'

Plug 'pangloss/vim-javascript'

Plug 'terryma/vim-expand-region'

" Wikipedia editor
Plug 'aquach/vim-mediawiki-editor'

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Dep. of the below
Plug 'Shougo/unite.vim'
" File explorer
Plug 'Shougo/vimfiler.vim'
" Use as default (instead of netrw)
let g:vimfiler_as_default_explorer = 1

" last plugin

" --- SNIGULP ---

call plug#end()

" Load or not plugins on start
" set noloadplugins
set loadplugins

" Space and Backspace as Leaders
noremap <space> <Nop>
noremap <backspace> <Nop>

" Hardcore Vim
" Switch to Command Mode to Command
" Encouragement to use J to Join Lines; and Ctrl-O to TempOrarily switch to Command Mode, just for one key stroke
inoremap <backspace> <nop>

" Space as global leader
" Analogous to Major mode
let mapleader="\<Space>"

" Backspace as local leader
" Analogous to Minor mode
let maplocalleader="\<Backspace>"

" Integrate Limelight with Goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Don't try to be compatible with Vi enabling new features
set nocompatible

" --- SOLARIZED ---

" Highlight syntax
syntax on
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" --- DEZIRALOS ---

" --- KOLOR ---

" let g:kolor_italic=1                    " Enable italic. Default: 1
" let g:kolor_bold=1                      " Enable bold. Default: 1
" let g:kolor_underlined=0                " Enable underline. Default: 0
" let g:kolor_alternative_matchparen=0    " Gray 'MatchParen' color. Default: 0

" colorscheme kolor

" --- ROLOK ---

" Spacemacs colorscheme

" if (has("termguicolors"))
  " set termguicolors
" endif
" set background=dark
" colorscheme spacemacs-theme

" ---

" Adjust terminal colors

if !has('gui_running')
	" Tell Vim terminal supports 256 colors
	set t_Co=256
	" set term=xterm-256color
endif

" ---

" --- OPTIONS ---

" Causes "Press ENTER or type command to continue" on startup
" set syntax on
" Correct way
" set syntax=vim
" set syntax != syntax on

" Show line numbers
set number
" set rnu
set relativenumber

" Double lines at bottom bar
" Shows file name, modification status, current line number, character on cursor position, scroll percentage
set laststatus=2

" Disable ALL indentation
set noautoindent
set nosmartindent
set nocindent

" Indentation based on file type (.md, .css)
" Used by plugins and rules kept in indent/ directory as a .vim file (eg. ~.vim/plugged/vim-markdown/indent/markdown.vim)
filetype indent off

" set indentexpr? to see, eg indentexpr=GetMarkdownIndent(), indentexpr& to remove
" set indentexpr=someFunction()

" Disable automatic commenting on new line insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Show file name and its modification state in window title
set title

" Tab autocompletion shows menu in Ex mode above the command
set wildmenu
set wildmode=longest:full,full
set wildignore+=*.swp,.git,*.bmp,*.gif,*.ico,*.jpg,*.png,*.pdf,*.psd

" set clipboard=unnamedplus
" Copy to Primary selection
set clipboard=unnamed

" Show keys in Normal mode at the bottom
set showcmd

" Enable mouse
" Works with Nerd Tree to open a file or directory, resize panes
set mouse=a

" set selectmode+=mouse

" Copy to Primary selection in Visual mode
" vnoremap y "*y
" vnoremap Y "*Y

" Put visually selected text in Primary selection register (*)
" set clipboard+=autoselect

" Enable word autocompletion
" C-n to activate
" z= correct, zg add as a good word, zw wrong word
" ]s, [s search for misspelled words forward / backwards
set spell
" en_ca, en_gb, en_au
set spelllang=en_us
" RMB
" For Gvim
set mousemodel=popup

" Show glyphs
scriptencoding utf-8
set encoding=utf8
set termencoding=utf-8
set fileencoding=utf-8

" Keep lines off when scrolling
" Default is 0
set scrolloff=5
set sidescrolloff=5

" Scroll half the window height
" Instead of just one line down/up when reach the end (scroll limit)
" So the cursor stays above
" Not applicable to scrolling shortcuts (^e, ^d, ^f)
set scrolljump=-50

" Nerdfont for Gvim
" set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11

" Disable blinking cursor
" A good article on universal hatred towards eye-annoying blinking cursor
" http://www.jurta.org/en/prog/noblink
set guicursor=a:blinkon0

" Error feedback
set errorbells
set visualbell

" No intro on start
" set shortmess+=I
set shortmess=a

" Set bottom bar's height
" set cmdheight=2

" Highlight current line
" cul
set cursorline

" Highlight current column, file-wise
set cursorcolumn

" zf to fold
set foldenable

" Manually select text in Visual mode or else to fold
set foldmethod=manual

" Show children headings on opening file
set foldlevel=1

" Column showing fold state (open or close) and level
set foldcolumn=1

" Briefly jump to the matching bracket
set showmatch

" Read modeline when found inside files opened
set modeline

" Show line and column position in status line
set ruler

" Can be - or +, is set according to textwidth
" cc
" set colorcolumn=80
" set colorcolumn=+10

" Wrap text when crossing line width
set wrap

" TTY improvements
set ttyfast

" Always substitute globally in file
" Can be toggled with g (eg /g to reverse to local substitution)
" :s, :substitute command
" :s/apple/pear/g
set gdefault

" Search inside wraps too
set wrapscan

" Autocompletion
" set complete=.,w,b,t
" Default: menu,preview
" set completeopt+=preview
" C-x C-k to complete keyword
" C-x C-l to complete line
" C-x C-s spelling suggestion
" C-x C-v Vim commands
set dictionary=/usr/share/dict/words

" C-x C-t
" http://www.gutenberg.org/ebooks/3202
" https://raw.githubusercontent.com/zeke/moby/master/words.txt
set thesaurus=$HOME/.vim/mthesaur.txt

" Enables the reading of .vimrc, .exrc and .gvimrc indent the current
" directory.  If you switch this option on you should also  consider
" setting the 'secure' option.  Using a  local .exrc, .vimrc or .gvimrc
" is a potential security leak, use with   care!
" set exrc
" set secure

" Shows Normal/Insert mode state
set showmode

" set shiftwidth=4
" Round down indentation to shiftwidth
set shiftround

" Define tab width
" One tab is four spaces long
" Markdown treats four spaces indented lines as code
" One good reason to size accordingly. Tab to declare code line (within block).
set softtabstop=4
set tabstop=4

" Pretty line breaks
set showbreak=↪

" Grep program for :grep command
" Ripgrep
set grepprg=rg

" No redraw on macro execution
set lazyredraw

" No delays on escaping
set noesckeys

" xterm / tmux compatible mouse
set ttymouse=xterm2

" Delete comment character when joining commented lines
set formatoptions+=j

" Change directory to the opened file's or switched buffer's
" Vimfiler doesn't work with it
" set autochdir

" Larger command history
" Default value is 50
set history=1000

" Key to invoke command-line window in Ex Mode (:)
" set cedit=^F

" Command line window height
" set cmdwinheight=7
" set cmdwinheight=20

" Command mode height in statusline
" set cmdheight=1
set cmdheight=2

" Show whitespace as characters (tab, space)
" Useful to see end of line or trail spaces
set list
" Dagger †, Double dagger ‡, Ellipsis …, Cross ✘, White Pointer ▷, White Arrow ⇨
" ‧, •, ·
set listchars=tab:▸\ ,eol:•,trail:·

" Put new window to the right instead of left of the current one on vertical split
set splitright

" Same but below instead of above for horizontal splits
" set splitbelow

" Move cursor to start of line (FNB) rather than keeping the cursor in the current position
" FNB - First Non Blank
" Is set as default
" set startofline
set nostartofline

" Match other marks too on % key press
set matchpairs+=<:>,“:”

" autoread when file is changed from outside
set autoread

" Transparency
" highlight clear

" Backspace
set backspace=eol,start,indent

" Searching without escaping
set magic

" Cross lines when going left/right
" set whichwrap+=<,>,h,l

" How long to blink when matching brackets
" Tenth of second
" mat
set matchtime=2

" lbr
set linebreak
" Linebreak on 120 characters
" tw
set textwidth=200

" compiler fish

" Report messages like "1 line less" even if just one line is changed
" Default is 2
set report=0

" Don't equalize splits
" set equalalways
set noequalalways

" Open Vim command under cursor instead of Linux command
set keywordprg=:help

" Hide pointer when typing
set mousehide

" Pop up menu height on keyword completion
" Default is 0, as much space is available
set pumheight=4

" Default is 20 or half the screen if equalalways (ea) is set
set helpheight=30

" True colors (24 bit)
" Vim colors
" URxvt does not support the colors unlike xterm
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
" set termguicolors

" Default a:blinkon0
" gcr
set guicursor=a:blinkoff150

" Disable backup
" They are being more harming than helpful
" No backup files
set nobackup
" No backup files while editing
set nowritebackup
" No swap files (.swp)
set noswapfile
" Alternative solution
" If first dir doesn't exist, jump to the second
" set backupdir=~/vimtmp,.
" set directory=~/vimtmp,.

" Sign column background color (for marks)
highlight clear SignColumn
" sign unplace * to remove the column

" Whitespace
" Trailing spaces bacground color
highlight ExtraWhitespace ctermbg=black ctermfg=red guibg=black guifg=red

" ^x ^o to invoke
set omnifunc=csscomplete#CompleteCSS

" Vi compatibility for changing words
" Add $ to the end of the word to be changed instead of removing
set cpoptions+=$

" Copy indentation of the current line
" set smartindent
set copyindent


" last option

" --- SNOITPO ---

" Search options

set incsearch
set hlsearch
set ignorecase
set smartcase

" ---

" Improved incremental search

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" :h g:incsearch#auto_nohlsearch
" set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Fuzzy search
" map z/ <Plug>(incsearch-fuzzy-/)
" map z? <Plug>(incsearch-fuzzy-?)
" map zg/ <Plug>(incsearch-fuzzy-stay)

" Fuzzyspell search
" map z/ <Plug>(incsearch-fuzzyspell-/)
" map z? <Plug>(incsearch-fuzzyspell-?)
" map zg/ <Plug>(incsearch-fuzzyspell-stay)

" Fuzzy search and fuzzyspell together

function! s:config_fuzzyall(...) abort
	return extend(copy({
	\   'converters': [
	\     incsearch#config#fuzzy#converter(),
	\     incsearch#config#fuzzyspell#converter()
	\   ],
	\ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> z/ incsearch#go(<SID>config_fuzzyall())
noremap <silent><expr> z? incsearch#go(<SID>config_fuzzyall({'command': '?'}))
noremap <silent><expr> zg? incsearch#go(<SID>config_fuzzyall({'is_stay': 1}))

" ----

" Flash yank area
" vim-operator-flashy plugin

map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$

" ---

" Star motions
" vim-asterisk

" map *   <Plug>(asterisk-*)
" map #   <Plug>(asterisk-#)
" map g*  <Plug>(asterisk-g*)
" map g#  <Plug>(asterisk-g#)
" map z*  <Plug>(asterisk-z*)
" map gz* <Plug>(asterisk-gz*)
" map z#  <Plug>(asterisk-z#)
" map gz# <Plug>(asterisk-gz#)

" Set z (stay) behaviour as default
map *  <Plug>(asterisk-z*)
map #  <Plug>(asterisk-z#)
map g* <Plug>(asterisk-gz*)
map g# <Plug>(asterisk-gz#)

let g:asterisk#keeppos = 1

" Emmet

" let g:user_emmet_leader_key='<CR>'

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" --- PLUGIN OPTIONS ---

" Powerline / Airline

" As required by Powerline
let g:powerline_pycmd = 'py3'
let g:Powerline_symbols = 'fancy'

let g:airline_powerline_fonts =1
" :AirlineTheme <theme>
" simple, dark, monochrome, understated, distinguished, jellybeans, term
let g:airline_theme='distinguished'

" Always show tab line (even for single tab)
let g:airline#extensions#tabline#enabled = 1

" ---

" Vim commentary

" Correct commenting in .Xdefaults and .Xresources
autocmd FileType xdefaults setlocal commentstring=!\ %s

" Correct commenting for Most pager config file, mostrc
autocmd FileType mostrc setlocal commentstring=%\ %s

" Task Warrior
autocmd FileType taskrc setlocal commentstring=#\ %s

" abook
autocmd FileType taskrc setlocal commentstring=#\ %s

" Zathura
autocmd FileType zathura setlocal commentstring=#\ %s

" Unix (ending in rc)
autocmd FileType unix setlocal commentstring=#\ %s

" ---

" TurboMark

" nmap <silent> m :TurboMark<CR>
" nmap <silent> ' :TurboFind<CR>

" ---

" BuffExplorer

let g:bufExplorerShowRelativePath=1
let g:bufExplorerSortBy='fullpath'

" ---

" Nerd Tree

" Quit after opening file
let NERDTreeQuitOnOpen=1

" Ignore multimedia files and so
" Ave, :P
let NERDTreeIgnore = ['\.png$','\.jpg$','\.gif$','\.mp3$','\.flac$', '\.ogg$', '\.mp4$','\.avi$','.webm$','.mkv$','\.pdf$', '\.zip$', '\.tar.gz$', '\.rar$', '\.swp$']

" Show hidden files too
let NERDTreeShowHidden=1

" Hides "Press ? for help"
let NERDTreeMinimalUI=1

" let g:NERDTreeWinPos = 'right'

let NERDTreeHighlightCursorline=1

" Single click to expand directories, double click to open files
let NERDTreeMouseMode=2

" Focus on current file in Nerd Tree
noremap <silent> <LocalLeader>t :NERDTreeFind<CR>

" Focus on Nerd Tree, open if closed
" noremap <silent> <LocalLeader>T :NERDTreeFocus<CR>

" Colorizer

" Color all files
" let g:colorizer_auto_color = 1

" Color specific file types
let g:colorizer_auto_filetype='css,html,scss,xml,js,yaml,svg,haml,styl,less,json,jsx,coffee,ls,json,yaml'

" Vim Emoji

" let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
" let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
" let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
" let g:gitgutter_sign_modified_removed = emoji#for('collision')

" ^x-^u
" set completefunc=emoji#complete


" Exjumplist
nmap <C-M-i>  <Plug>(exjumplist-go-last)
nmap <C-M-o>  <Plug>(exjumplist-go-first)
nmap <M-)>  <Plug>(exjumplist-next-buffer)
nmap <M-(>  <Plug>(exjumplist-previous-buffer)

nnoremap <localleader>T :TagbarToggle<CR>

let base16colorspace=256  " Access colors present in 256 colorspace

" Vim Javascript plugin
" Syntax highlighting
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow  = 1

set foldmethod=syntax
set conceallevel=1

let g:javascript_conceal_function                  = "ƒ"
let g:javascript_conceal_null                      = "ø"
let g:javascript_conceal_this                      = "@"
let g:javascript_conceal_return                    = "⇚"
let g:javascript_conceal_undefined                 = "¿"
let g:javascript_conceal_NaN                       = "ℕ"
let g:javascript_conceal_prototype                 = "¶"
let g:javascript_conceal_static                    = "•"
let g:javascript_conceal_super                     = "Ω"
let g:javascript_conceal_arrow_function            = "⇒"
let g:javascript_conceal_noarg_arrow_function      = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"

" Flash yank
" Set background color
hi Flashy guibg=yellow ctermbg=yellow

" last plugin option
" Plugin options

" --- SNOITPO NIGULP ---

" My key bindings
" Custom mappings

" Tab manipulation
source ~/.vim/chinggis/tabs.vim

" Operational function keys
source ~/.vim/chinggis/fkeys.vim

" Reverse word and selection
source ~/.vim/chinggis/reverse.vim

" Tabularize key bindings
" source ~/.vim/chinggis/tabular.vim

" Use primary selection as default clipboard
" nnoremap p "*p
" nnoremap P "*P

" Five times more movement
" ^k is used for inserting digraphs
" nnoremap <C-k> 5k
" nnoremap <C-j> 5j
nnoremap <C-l> 5l
nnoremap <C-h> 5h

" Buffer navigation
nnoremap <localleader>bn :bnext<CR>
nnoremap <localleader>bN :bprev<CR>
nnoremap <localleader>bo :enew<CR>
nnoremap <localleader>b0 :bfirst<CR>
nnoremap <localleader>b$ :blast<CR>
nnoremap <localleader>bd :bclose<CR>
nnoremap <localleader>bb :buffers<CR>
nnoremap <localleader>B :BufExplorer<CR>

nnoremap <localleader>fW :SudoWrite<CR>
nnoremap <localleader>W <localleader>fW

nnoremap ZW :SudoWrite<CR>

" Ex mode
" type visual to switch back to Normal mode
nnoremap Q <nop>

" Macros
" nnoremap q <nop>

" Select all
noremap <localleader>a ggVG

" ---

" HJKL enforcement

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

nnoremap <PageUp> <nop>
noremap <PageDown> <nop>
nnoremap <End> <nop>
noremap <Home> <nop>

" Use S-Ins
nnoremap <MiddleMouse> <Nop>

" ---

" Pane (window, split) navigation
nnoremap <localleader>h <C-w>h
nnoremap <localleader>l <C-w>l
nnoremap <localleader>j <C-w>j
nnoremap <localleader>k <C-w>k
nnoremap <localleader>s <C-w>v
nnoremap <localleader>d <C-w>c

" ---

" Command mode
" Colon, Semi-colon
" nnoremap ; :
" vnoremap ; :
" nnoremap : Q
" vnoremap : Q

" first-born is a word

" noremap w W
" noremap b B
" noremap e E
" Jump back to the end of the previous word
" noremap ge gE

" noremap W w
" noremap B b
" noremap E e
" noremap gE ge

" Select until whitespace instead of beginning of next word
" vnoremap w aW

" Extending the series to plugins
" onoremap iw iW
" onoremap iW iw

" Not needed
" nmap ysiw ysiW
" augroup mySurround|au!|autocmd VimEnter * noremap ysiw ysiW|augroup END
" map ysiw <Plug>YsurroundiW
" map ysiW <Plug>Ysurroundiw

" first-born

" Sudo write the file
" cmap w!! w !sudo tee % >/dev/null
cmap w!! SudoWrite

" Copy always from Primary selection
map <MouseMiddle> "*p

" Keep the cursor in place while joining lines
" S-j
nnoremap J mzJ`z

nnoremap <LocalLeader>gs :Gstatus<CR>
nnoremap <LocalLeader>gr :Gremove<CR>
nnoremap <LocalLeader>gl :Glog<CR>
nnoremap <LocalLeader>gb :Gblame<CR>
nnoremap <LocalLeader>gm :Gmove
nnoremap <LocalLeader>gp :Ggrep
nnoremap <LocalLeader>gR :Gread<CR>
nnoremap <LocalLeader>gg :Git
nnoremap <LocalLeader>gd :Gdiff<CR>

nnoremap Zs :SaveSession<CR>
nnoremap Zo :OpenSession<CR>

nnoremap <LocalLeader>p :PlugInstall<CR>
nnoremap <LocalLeader>P :set paste!<CR>

" Schlepp
" Move text in Visual mode around file
vmap <up>    <Plug>SchleppUp
vmap <down>  <Plug>SchleppDown
vmap <left>  <Plug>SchleppLeft
vmap <right> <Plug>SchleppRight

vmap Dk <Plug>SchleppDupUp
vmap Dj <Plug>SchleppDupDown
vmap Dh <Plug>SchleppDupLeft
vmap Dl <Plug>SchleppDupRight

" Replace current word under cusor globally
nnoremap <LocalLeader>Rw :%s/\<<C-r><C-w>\>/

" Shortcut to help pages for Vim commands
nnoremap <LocalLeader>H :Man

" Reize splits quickly

" Resize height
map = <C-w>+
map - <C-w>-

" Resize width
map + <C-w>>
map _ <C-w><

" Split right by default

" Split below (pane)
noremap <C-w>p <C-w>s

noremap <C-w>s <C-w>v

nnoremap <LocalLeader>S :set

" Swap (exchange) for FBL
" https://vimgifs.com/caret/

" Start of line
" Line beginning (FNB)
" nnoremap 0 ^
" nnoremap ^ 0
" For wrapped lines
" nnoremap g^ g0
" nnoremap g0 g^

" End of line
" Line end (FNB)
" nnoremap $ g_
" nnoremap g_ $

" Quick surround

" Extending Surround.vim

" Quotes
map <LocalLeader>' ysiW'
map <LocalLeader>" ysiW"
map <LocalLeader>q ysiW'
map <LocalLeader>Q ysiW"
" map <LocalLeader>p ysiW)
" map <LocalLeader>P ysiW]

" Change surround quotes
" map csq cs"'
" map csQ cs'"

" Change surround parentheses
" map csb cs])
" map csB cs)}
" map csp cs)]

" Yank surround quotes
" map ysq ysW'
" map ysQ ysW"

" Yank surround parentheses
" map ysb ysW)
" map ysB ysW]
" map ysp ysW]

" Yank surround double parentheses
" With Curlies, curly brackets
" map ysc ysw}lysw}
" map ysC ysw}lysw}aw\|<Esc>B
" With Brackets
" map ysb ysw]lysw]

" Yank surround around brackets
" Supports tags, eg <small>
" Parentheses
map <LocalLeader>sb ysab
" Curly brackets
map <LocalLeader>sB ysaB
map <LocalLeader>sc ysaB
" Square brackets
map <LocalLeader>sp ysa]
" Surround around sentence
map <LocalLeader>ss ysas

" Parentheses
map <LocalLeader>) ysiW)
map <LocalLeader>( ys$)
map <LocalLeader>] ysiW]
map <LocalLeader>[ ys$]

" Other
map <LocalLeader>* ysiW*
map <LocalLeader>d> ysiW>

map <LocalLeader>d' ds'
map <LocalLeader>d" ds"
map <LocalLeader>* ds*
map <LocalLeader>d) ds)
map <LocalLeader>d] ds]
map <LocalLeader>d> ds>

map <LocalLeader>c' cs"'
map <LocalLeader>c" cs'"
map <LocalLeader>c* cs_*
map <LocalLeader>c_ cs*_
map <LocalLeader>c) cs])
map <LocalLeader>c] cs)]
map <LocalLeader>c> cs)>

" ---

" Spacemacs legacy

" nnoremap <leader>fs :write<CR>
nnoremap <leader>fed :edit $MYVIMRC<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bN :new<CR>
" Native
nnoremap <leader>bb :buffers<CR>
" BufExplorer plugin
nnoremap <leader>bB :BufExplorer<CR>
" fzf
nnoremap <leader>bf :Buffers<CR>

" ---

" Cursor moves through wrapped line
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" CHANGE
" Change text under cursor (and repeat with .)
" noremap <silent> <LocalLeader>c *cgn

" NO HIGHLIGHT
" <silent> doesn't print ":nohl" in status line
noremap <silent><LocalLeader>n :nohl<CR>

" fzf
" Fuzzy Finder

" command! -bang -nargs=* Rg
"    \ call fzf#vim#grep(
"    \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
"    \   <bang>0 ? fzf#vim#with_preview('up:60%')
"    \           : fzf#vim#with_preview('right:50%:hidden', '?'),
"    \   <bang>0)


    " let g:fzf_files_options =
    "   \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'


" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
" imap <c-x><c-k> <plug>(fzf-complete-word)
" imap <c-x><c-f> <plug>(fzf-complete-path)
" imap <c-x><c-j> <plug>(fzf-complete-file-ag)


" imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
" inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

" ^t to open in new tab, ^v in split
noremap <LocalLeader>f :FZF<CR>


" noremap <LocalLeader>C :Codi<CR>

" Swoop
" Default is <leader>l
" nnoremap <LocalLeader>s :call Swoop()<CR>
" vnoremap <LocalLeader>s :call SwoopSelection()<CR>

" Unmap certain keys

nmap <backspace> <nop>
nmap <CR> <nop>
nmap <space> <nop>

" New line after current line without switching to Insert mode
" nmap <CR> o<Esc>
" New line before current line
" nmap <Backspace> O<Esc>

" Don't clear clipboard after pasting in Visual mode
vnoremap p "_dP

noremap <LocalLeader>j :jumps<CR>
noremap <LocalLeader>J :clear<CR>

" Emmet
map <LocalLeader>e <C-y>,
map <LocalLeader>E V<C-y>,

" Change inside and around Quotes, single & double
" Line-wise, no matter where the cursor is
noremap ciQ ci'
noremap caQ ca'
noremap caq ca"
noremap ciq ci"

" cib affects () parentheses, and ciB {} curly brackets
" S stands for Square Brackets
noremap ciS ci]
noremap caS ca]

" Easy Align plugin
" https://github.com/junegunn/vim-easy-align
" gaip=, vipga=; inner paragraph, align by =
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" Use gaip*| to align a table

noremap gD g^dg$g^
noremap gdd g^dg$g^

" Center the screen
noremap G Gzzzv
noremap n nzzzv
noremap N Nzzzv
noremap } }zzzv
noremap { {zzzv

" Close all buffers
" nnoremap XX :qa<CR>

" Remove underscores from word definition
" Affects cw, dw, yw etc

" ---
" word definition

" Words don't contain underscores
" set iskeyword-=_

" First-born is a word
" set iskeyword+=-
" don't is a word
" set iskeyword+='

" ---

" Easier Omni-completion
" inoremap <C-]> <C-X><C-]>
" inoremap <C-F> <C-X><C-F>
" inoremap <C-D> <C-X><C-D>
" inoremap <C-L> <C-X><C-L>
" inoremap <C-O> <C-X><C-O>

" Custom leader key bindings
noremap <Leader>w :write<CR>
noremap <Leader>o :tabedit
noremap <Leader>r :source $MYVIMRC<CR>
noremap <Leader>c :tabedit $MYVIMRC<CR>

" Swap Visual modes

" Swap Visual with Visual Block
" noremap v <C-v>
" noremap <C-v> v

" Unmap Tab and S-Tab
" Use Ctrl-I and Ctrl-D instead
" inoremap <Tab> <Nop>
" inoremap <S-Tab> <Nop>

" Use > to shift (accepts input for range)
" vnoremap <Tab> >gv
" vnoremap <S-Tab> <gv

" Do not exit from Visual Mode when shifting text
" So it can be repeatedly shifted back and forth
vnoremap < <gv
vnoremap > >gv

" Key bindings for Wikipedia editor plugin
noremap <localleader>wo :MWRead 
noremap <localleader>ww :MWWrite<CR>
noremap <localleader>wb :MWBrowse<CR>
noremap <localleader>wd :MWDiff<CR>

" let g:mediawiki_editor_url='en.wikipedia.org'
let g:mediawiki_editor_url='commons.wikimedia.org'
let g:mediawiki_editor_path='/w/'
let g:mediawiki_editor_username='Chinggis6'

" last custom mapping

" --- sgnippam motsuC ---

" Tengerid Commands

" Mapping Man to :help

" <q-args> for quoted arguments
command! -nargs=* Man help <args>

" Open new file in new tab
command! -nargs=* O tabe <args>
noremap <localleader>O :O

" Save file as root user
" Requires Eunuch plugin
command! W SudoWrite

command! WW saveas

" Split to the right by default (vertically)
" WARNING: Maps in search mode too
" cnoremap sp vsp
" cnoremap split vsplit

" Reload vimrc on save instantly
" http://www.bestofvim.com/tip/auto-reload-your-vimrc/
augroup reload_vimrc " {
" Clears out any previous autocommands Vim has registered for that group
	autocmd!
	autocmd BufWritePost $HOME/.vimrc source $HOME/.vimrc
augroup END " }

" Vim abbreviations
" Evaluates after Esc
" Like Visual block mode replacements
abbrev me Chinggis6@iCloud.com
abbrev CTA Chinggis Tenger Atsyz

au FileType markdown abbr _l [](http://)<ESC>T[i

" Start Nerd Tree if no files specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Prevent lag on Esc hit
set ttimeoutlen=0
set timeoutlen=1000
au InsertEnter * set timeout
au InsertLeave * set notimeout

" -- Fish plugin ---
" Set up :make to use fish for syntax checking.
" autocmd FileType fish compiler fish
" Set this to have long lines wrap inside comments.
" autocmd FileType fish setlocal textwidth=79
" Enable folding of block structures in fish.
" autocmd FileType fish setlocal foldmethod=expr

" Display current line number in bold text
highlight CursorLineNr cterm=bold

" Display comments as Italic
" highlight Comment cterm=italic
highlight Comment cterm=standout

" Different cursor shapes based on modes
" Set IBeam shape in Insert mode, underline shape in Replace mode and block shape in Normal mode.
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" source $HOME/.vim/commons.vim

" Activate Rainbow Parentheses on LISP language family
" :RainbowParentheses
augroup rainbow_lisp
  autocmd!
  autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END

augroup rainbow
  autocmd!
  autocmd FileType vim,javascript,php,python RainbowParentheses
augroup END

" Uncomment to see the effect
" ((((((((((()))))))))))

" Transparent background
" hi Normal guibg=NONE ctermbg=NONE

" Tmux title with open file in Vim
autocmd BufEnter * call system("tmux rename-window " . expand("%:t"))
autocmd VimLeave * call system("tmux rename-window bash")
autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
set title

" Change just file name in Filename.Extension format
" autocmd FileType fish setlocal iskeyword-=.,-,_

unmap zg?

" So J can receive input for range
unmap J

autocmd BufEnter,FileType python :TagbarOpen<CR>
" Vim plugins
autocmd BufEnter *.vim :TagbarOpen<CR>

" Folding for ==sections==
" autocmd BufEnter,FileType mediawiki :set foldexpr=getline(v:lnum)=~'^\\(=\\+\\)[^=]\\+\\1\\(\\s*\\)\\=\\s*$'?\">\".(len(matchstr(getline(v:lnum),'^=\\+'))-1):\"=\" & fdm=expr

autocmd BufEnter,FileType startify :set modifiable

set pastetoggle=<leader>p

" ---
" Vim is Beautiful
" Vim is Simple
" ---

" If you really want to learn Vim, then I say, start from 'ed',
" it's a very simple and easy line editor build-in on most Linux distributions.

" It is the prototype of Vim.

" Feel the tradition first, it's necessary to see and understand Vim.

" Try It And See™


" The End, 2017
