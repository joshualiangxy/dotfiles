" Comments in Vimscript start with a `"`.

" If you open this file in Vim, it'll be syntax highlighted for you.

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc' because Vim automatically enters noncompatible mode if that file
" is present. But we''re including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Turn on syntax highlighting
syntax on

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber

" Always show the status line at the bottom, even if you only have one window
" open.
set laststatus=2

" The backspace key has slightly unintuitive behaviour by default. For
" example, by default, you can't backspace before the insertion point set with
" 'i'. This configuration makes backspace behave more reasonably, in that you
" can backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. having a buffer that
" isn't shown in any window) that has unsaved changes and then quitting e.g.
" via `:qa!`. We find hidden buffers helpful enough to disable this
" protection. See `:help hidden` for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
" 'Q' in normal mode enters Ex mode. You almost never want this.
nmap Q <Nop>

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforced through a .vimrc, while we don't know how
" to prevent the latter.
" Do this in normal mode.
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

" Auto adds indentations.
filetype plugin indent on

" Sets linebreak at whitespace.
set linebreak

" Turns tabs into spaces.
set expandtab

" Number of spaces a tab equates to.
set tabstop=2 

" Number of spaces to use when indenting or de-indenting.
set shiftwidth=2 

" Set softtabstop.
set softtabstop=2

" Autoindentation.
set autoindent

" Smart indentation.
set smartindent

" Show command.
set showcmd

" Allows backspace to move cursor over automatically inserted indentation and
" over start/end of line.
set backspace=2 

" Don't use backups
set wb nobk vb so=1 ru ls=2

" 
set ww=b,s,h,l,<,>,[,]
set clipboard=autoselect,exclude:.*
set fo+=r
syn on
colo elflord
set guifont=Consolas:h11
