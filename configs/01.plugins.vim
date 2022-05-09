call plug#begin('~/.config/nvim/bundle')
" Theme
        Plug 'morhetz/gruvbox'

" File browser
        Plug 'scrooloose/nerdtree'
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
        Plug 'ap/vim-buftabline'

" Code intellisense
        Plug 'tpope/vim-surround'
        Plug 'neoclide/coc.nvim'                                                " Language server
        Plug 'jiangmiao/auto-pairs'                                     " Parenthesis auto
        Plug 'alvan/vim-closetag'
        Plug 'mattn/emmet-vim'
        Plug 'alvan/vim-closetag'                                               " Auto close HTML/XML tag
        Plug 'preservim/nerdcommenter'                                  " Comment code

        Plug 'tmhedberg/matchit'
        Plug 'arcticicestudio/nord-vim'

" Code syntax highlight
        Plug 'yuezk/vim-js'                                                     " Javascript
        Plug 'MaxMEllon/vim-jsx-pretty'                                 " JSX/React
        Plug 'jackguo380/vim-lsp-cxx-highlight'                 " C++ syntax
        Plug 'uiiaoo/java-syntax.vim'                                   " Java

        Plug 'https://github.com/posva/vim-vue.git'             " VueJS
        Plug 'w0rp/ale'                                                                 " lint code
        Plug 'ap/vim-css-color'                                                 " detect CSS color
        Plug 'leafgarland/typescript-vim'                               " typescript syntax

        Plug 'maxmellon/vim-jsx-pretty'
        Plug 'prettier/vim-prettier'
        Plug 'othree/xml.vim'
        Plug 'othree/html5.vim'
        Plug 'cakebaker/scss-syntax.vim'

        " Better syntax-highlighting for filetypes in vim
        Plug 'sheerun/vim-polyglot'

        " Auto-close braces and scopes
        Plug 'jiangmiao/auto-pairs'

        Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }} " Markdown preview
" }}}

" Git
        Plug 'tpope/vim-fugitive'
        Plug 'airblade/vim-gitgutter'
call plug#end()

