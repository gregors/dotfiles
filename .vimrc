set nocompatible      " We're running Vim, not Vi!

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set number
set encoding=utf-8

" make kj to ESC
inoremap kj <Esc>

nmap ff :FufFile<CR>
nmap fd :FufDir<CR>

filetype plugin on    " Enable filetype-specific plugins

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

" original repos on github
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'msanders/snipmate.vim'
Plugin 'leafgarland/typescript-vim'

" languages
Plugin 'tpope/vim-rails.git'
"Plugin 'tpope/vim-haml.git'
Plugin 'vim-ruby/vim-ruby'
Plugin 'elixir-editors/vim-elixir'
Plugin 'digitaltoad/vim-jade'

Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'git://git.wincent.com/command-t.git'

filetype off
"Plugin 'kchmck/vim-coffee-script'
"Plugin 'jeroenbourgois/vim-actionscript'

"Plugin 'gummesson/stereokai'

syntax on             " Enable syntax highlighting
colorscheme stereokai
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting

autocmd FileType c,cpp,java,php,ruby,rb autocmd BufWritePre <buffer> %s/\s\+$//e

function! RubyMethodFold(line)
  let line_is_method_or_end = synIDattr(synID(a:line,1,0), 'name') == 'rubyMethodBlock'
  let line_is_def = getline(a:line) =~ '\s*def '
  return line_is_method_or_end || line_is_def
endfunction

set foldexpr=RubyMethodFold(v:lnum)

"map <Leader>t :FufFile <Esc>

" Execute open rspec buffer
" Thanks to Ian Smith-Heisters
function! RunSpec(args)
 if exists("b:rails_root") && filereadable(b:rails_root . "/script/spec")
   let spec = b:rails_root . "/script/spec"
 else
   let spec = "spec"
 end
 let cmd = ":! " . spec . " % -cfn " . a:args
 execute cmd
endfunction

" Mappings
" run one rspec example or describe block based on cursor position
map !s :call RunSpec("-l " . <C-r>=line('.')<CR>)
" run full rspec file
map !S :call RunSpec("")


" tell vim to keep a backup file
set backup

" tell vim where to put its backup files
set backupdir=/private/tmp

" tell vim where to put swap files
set dir=/private/tmp
set noswapfile

