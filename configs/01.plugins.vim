call plug#begin('~/.config/nvim/bundle')
" Theme
        Plug 'morhetz/gruvbox'

" File browser
        Plug 'scrooloose/nerdtree'
        Plug 'preservim/nerdcommenter'
        Plug 'Xuyuanp/nerdtree-git-plugin'
        Plug 'ryanoasis/vim-devicons'
        Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
        Plug 'unkiwii/vim-nerdtree-sync'
" File search
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
        Plug 'sharkdp/bat'
        Plug 'kien/ctrlp.vim'                                                   " File searching
        Plug 'easymotion/vim-easymotion'                                " Character searching

" Status bar
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'

" Code intellisense
        Plug 'tpope/vim-surround'
        Plug 'neoclide/coc.nvim'                                                " Language server
        Plug 'jiangmiao/auto-pairs'                                     " Parenthesis auto
        Plug 'mattn/emmet-vim'
        Plug 'alvan/vim-closetag'                                               " Auto close HTML/XML tag

" Code syntax highlight

        Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }} " Markdown preview
" }}}
        
        " Better syntax-highlighting for filetypes in vim
        Plug 'sheerun/vim-polyglot'


        " Snippets
        Plug 'sirver/ultisnips'

        " Colorizer
        Plug 'norcalli/nvim-colorizer.lua'


        " Git
        Plug 'tpope/vim-fugitive'
        Plug 'airblade/vim-gitgutter'
call plug#end()

