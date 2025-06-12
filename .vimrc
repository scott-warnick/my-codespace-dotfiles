" ====================================================================
" Basic Vim Settings for GitHub Codespaces
" Enhances usability without requiring complex plugins
" ====================================================================

" General Options ----------------------------------------------------
set nocompatible         " Behave like Vim, not Vi (essential for modern features)
syntax on                " Enable syntax highlighting
filetype plugin indent on " Enable file type detection, plugins, and intelligent indenting

" Display Options ----------------------------------------------------
set number               " Show line numbers (absolute)
" set relativenumber     " Show relative line numbers (useful for navigation commands)
" set nu rnu             " Combine absolute and relative numbers (shows both)

set showcmd              " Show the command being typed in the status line
set showmode             " Show the current mode (e.g., -- INSERT --)
set ruler                " Show cursor position in the status line
set wildmenu             " Enable enhanced command-line completion
set mouse=a              " Enable mouse support in all modes (useful for terminal)
set cursorline           " Highlight the current line
" set cursorcolumn       " Highlight the current column (can be distracting)

" Indentation & Formatting -------------------------------------------
set tabstop=4            " Number of spaces a <Tab> counts for
set shiftwidth=4         " Number of spaces to use for autoindenting
set expandtab            " Use spaces instead of tabs
" set autoindent         " Copy indent from current line to new line
" set smartindent        " Smarter autoindent for C-like languages
set cindent              " Smarter autoindent for C/C++/Java (best for code)

" Search Options -----------------------------------------------------
set hlsearch             " Highlight all matches for the current search pattern
set incsearch            " Show partial matches while typing search pattern
set ignorecase           " Ignore case when searching
set smartcase            " Override 'ignorecase' if search pattern contains uppercase

" Command-line History -----------------------------------------------
set history=1000         " Keep 1000 lines of command-line history

" Persistence --------------------------------------------------------
set undofile             " Enable persistent undo (undo changes even after closing/reopening)
set undodir=~/.vim/undo  " Directory for persistent undo files (ensure this directory exists)
" Command to create the undo directory if it doesn't exist
silent !mkdir -p ~/.vim/undo

" Visual Bells -------------------------------------------------------
set visualbell           " Use a visual flash instead of an audible bell (less annoying)

" Status Line (Optional - More advanced for later) ------------------
" set statusline=%F%m%r%h%w\ [FORMAT=%Y]\ [ENC=%{&encoding}]\ [POS=%l,%v][%p%%]\ %{(%{&filetype}!=''?join(['[', &filetype, ']'],''):'')}
" set laststatus=2         " Always show status line

" ====================================================================
" Custom Mappings (Examples - Add your own here)
" ====================================================================
" F2 to toggle line numbers
nnoremap <F2> :set invnumber<CR>

" F3 to clear search highlight
nnoremap <F3> :nohlsearch<CR>

" Save and Quit (useful for quick exit)
"nnoremap <leader>wq :wq<CR>
" <leader> is a special key, often mapped to space or comma. Set it here:
"let mapleader = " "
color elflord
" End of .vimrc
" ====================================================================
