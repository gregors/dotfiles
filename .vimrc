set nocompatible      " We're running Vim, not Vi!

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set number
set encoding=utf-8

" make kj to ESC
inoremap kj <Esc>
inoremap jk <Esc>
inoremap jj <Esc>

ca tn tabnew
ca te tabedit
ca nc NERDTreeClose

" Shortcut to rapidly toggle `set list` - shows whitespace
nmap <leader>l :set list!<CR>

" lhs comments
map ,# :s/^/#/<CR>
map ,/ :s/^/\/\//<CR>
map H ^
map L $

filetype plugin on  " Enable filetype-specific plugins

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'

" languages
" Plugin 'posva/vim-vue'
" Plugin 'tpope/vim-rails.git'
" Plugin 'vim-ruby/vim-ruby'
Plugin 'elixir-editors/vim-elixir'
" Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'
" Plugin 'tomlion/vim-solidity'
" Plugin 'fatih/vim-go'
" Plugin 'rhysd/vim-crystal'
" Plugin 'andys8/vim-elm-syntax'

Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'ap/vim-css-color'
"Plugin 'evanleck/vim-svelte'


" colorscheme
Plugin 'gregors/vim-colors-codeschool'
Plugin 'fcpg/vim-fahrenheit'
Plugin 'fcpg/vim-orbital'
Plugin 'slugbyte/yuejiu'
Plugin 'semibran/vim-colors-synthetic'
Plugin 'szorfein/fantasy.vim'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'julien/vim-miniml'
Plugin 'acarapetis/vim-colors-github'
Plugin 'nanotech/jellybeans.vim'
Plugin 'patstockwell/vim-monokai-tasty'
Plugin 'joshdick/onedark.vim'

call vundle#end()            " required

" colorscheme codeschool
" colorscheme fahrenheit

filetype off

" Plugin 'kchmck/vim-coffee-script'
" Plugin 'digitaltoad/vim-jade'
" Plugin 'tpope/vim-haml.git'

" ctrlp settings
 let g:ctrlp_custom_ignore = {
 	\ 'dir':  '(\.git|deps|_build|node_modules|cover|coverage)$',
 	\ }

if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob "" --glob "!.git/"'
  let g:ctrlp_use_caching = 0
else
  let g:ctrlp_clear_cache_on_exit = 0
endif

" let g:ctrlp_cmd = 'CtrlPMixed'

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd FileType c,cpp,java,php,ruby,rb,ex,exs autocmd BufWritePre <buffer> %s/\s\+$//e

" show hidden files
" https://stackoverflow.com/questions/5057359/how-can-i-show-hidden-files-starting-with-period-in-nerdtree
let NERDTreeShowHidden=1

" function! RubyMethodFold(line)
"   let line_is_method_or_end = synIDattr(synID(a:line,1,0), 'name') == 'rubyMethodBlock'
"   let line_is_def = getline(a:line) =~ '\s*def '
"   return line_is_method_or_end || line_is_def
" endfunction
"
" set foldexpr=RubyMethodFold(v:lnum)


" Execute open rspec buffer
" Thanks to Ian Smith-Heisters
" function! RunSpec(args)
"  if exists("b:rails_root") && filereadable(b:rails_root . "/script/spec")
"    let spec = b:rails_root . "/script/spec"
"  else
"    let spec = "spec"
"  end
"  let cmd = ":! " . spec . " % -cfn " . a:args
"  execute cmd
" endfunction

" Mappings
"
" run one rspec example or describe block based on cursor position
" map !s :call RunSpec("-l " . <C-r>=line('.')<CR>)

" run full rspec file
" map !S :call RunSpec("")

" tell vim to keep a backup file
" set backup

" tell vim where to put its backup files
" set backupdir=~/.vim/backups

" tell vim where to put swap files
" set dir=/private/tmp
set noswapfile

" remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
set autochdir

