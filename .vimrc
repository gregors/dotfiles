set nocompatible      " We're running Vim, not Vi!

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set number
set encoding=utf-8

" make kj to ESC
inoremap kj <Esc>
autocmd BufWritePre * :%s/\s\+$//e

nmap ff :FufFile<CR>
nmap fd :FufDir<CR>

filetype plugin on    " Enable filetype-specific plugins

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'msanders/snipmate.vim'
Plugin 'leafgarland/typescript-vim'

" languages
Plugin 'tpope/vim-rails.git'
Plugin 'vim-ruby/vim-ruby'
Plugin 'elixir-editors/vim-elixir'

Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ap/vim-css-color'

Plugin 'git://git.wincent.com/command-t.git'

" colorscheme
Plugin 'patstockwell/vim-monokai-tasty'
Plugin 'gregors/vim-colors-codeschool'
Plugin 'fcpg/vim-fahrenheit'
Plugin 'fcpg/vim-orbital'
Plugin 'slugbyte/yuejiu'
Plugin 'semibran/vim-colors-synthetic'
Plugin 'szorfein/fantasy.vim'
Plugin 'julien/vim-miniml'
Plugin 'acarapetis/vim-colors-github'
Plugin 'nanotech/jellybeans.vim'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'xdefrag/vim-beelzebub'

call vundle#end()            " required

colorscheme codeschool

filetype off

" Plugin 'kchmck/vim-coffee-script'
" Plugin 'jeroenbourgois/vim-actionscript'
" Plugin 'digitaltoad/vim-jade'
" Plugin 'tpope/vim-haml.git'

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd FileType c,cpp,java,php,ruby,rb,ex,exs autocmd BufWritePre <buffer> %s/\s\+$//e

" show hidden files
" https://stackoverflow.com/questions/5057359/how-can-i-show-hidden-files-starting-with-period-in-nerdtree
let NERDTreeShowHidden=1

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
"
" run one rspec example or describe block based on cursor position
map !s :call RunSpec("-l " . <C-r>=line('.')<CR>)

" run full rspec file
map !S :call RunSpec("")

" lhs comments
map ,# :s/^/#/<CR>
map ,/ :s/^/\/\//<CR>


" tell vim to keep a backup file
set backup

" tell vim where to put its backup files
set backupdir=~/.vim/backups

" tell vim where to put swap files
set dir=/private/tmp
set noswapfile

