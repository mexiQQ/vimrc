set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle' 


 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'altercation/vim-colors-solarized'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 Bundle 'plasticboy/vim-markdown'
 Bundle 'scrooloose/nerdtree'
 Bundle 'kien/ctrlp.vim'
 Bundle 'msanders/snipmate.vim'
 Bundle 'mileszs/ack.vim'
 Bundle 'Shougo/neocomplcache.vim'
 Bundle 'Townk/vim-autoclose'
 Bundle 'vim-scripts/jsbeautify'
 Bundle 'maksimr/vim-jsbeautify'
 Bundle 'einars/js-beautify'
 Bundle 'Lokaltog/vim-powerline'
 Bundle 'rizzatti/dash.vim'
 Bundle 'vim-ruby/vim-ruby'
 " vim-scripts repos
 " Bundle 'hardcore'
 " git repos on your local machine (ie. when working on your own plugin)
 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

 " NERDTree config
 map <F2> :NERDTreeToggle<CR>
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&  b:NERDTreeType == "primary") | q | endif

 "color scheme 
 :colorscheme molokai 
" :colorscheme solarized
 syntax enable
 set background=dark
 let g:solarized_termcolors=256

 "neocomplache config
 let g:neocomplcache_enable_at_startup = 1
 let g:neocomplcache_force_overwrite_completefunc = 1
 let g:Powerline_symbols = 'unicode'

 "other config
 set nu
 set mouse=a
 let mapleader=","
 set tabstop=2
 map Y "+y  
 map P "+p  ""
 "powerline config
 set laststatus=2
 set t_Co=256   
 set encoding=utf-8  
 set fillchars+=stl:\ ,stlnc:\

 nnoremap $ n
 nnoremap n $
 nnoremap m 10j
 nnoremap f 10k
 nnoremap <space> za
  
 map <c-f> :call JsBeautify()<cr>
      autocmd FileType javascript noremap <buffer>  <c-f> :call  JsBeautify()<cr>
      autocmd FileType html noremap <buffer> <c-f> :call  HtmlBeautify()<cr>
      autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
   
 set ts=2
 set shiftwidth=2
 set pastetoggle=<F3>
 set expandtab
 set autoindent
 
 :se cursorcolumn
 :se cursorline
