"NERDTree
        map <F5> :NERDTreeToggle<CR>
        map <C-i> :NERDTreeFind<CR>
        let g:NERDTreePatternMatchHighlightFullName = 1
        let NERDTreeQuitOnOpen=1
        let NERDTreeAutoDeleteBuffer = 1
        let NERDTreeMinimalUI = 1
        let NERDTreeDirArrows = 1
        let g:NERDDefaultAlign = 'left'
        let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
        let g:NERDTreeChDirMode=2
        let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
        let g:NERDTreeShowBookmarks=1

        " Exit Vim if NERDTree is the only window left.
            autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

        " Change arrow to expand/collapse tree
                let g:NERDTreeDirArrowExpandable = '▸'
                let g:NERDTreeDirArrowCollapsible = '▾'

        " Git status icon
                let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

        " Hightlight current file
            let g:nerdtree_sync_cursorline = 1
        " Font
            set guifont=Fira

"Theme
        syntax enable
        set background=dark
        highlight Normal ctermbg=None
        colorscheme gruvbox
        let g:airline_theme='gruvbox'
        set termguicolors

"File Search
        " This is the default extra key bindings
                let g:fzf_action = {
                        \ 'ctrl-t': 'tab split',
                        \ 'ctrl-x': 'split',
                        \ 'ctrl-s': 'vsplit' }

        " Preview window
                let g:fzf_preview_window = ['right:50%', 'ctrl-/']
                let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.5, 'highlight': 'Comment' } }
                let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

        hi! fzf_fg ctermfg=14
        hi! fzf_fgp ctermfg=3
        hi! fzf_hl ctermfg=5
        hi! fzf_hlp ctermfg=5
        hi! fzf_info ctermfg=6
        hi! fzf_prompt ctermfg=6
        hi! fzf_spinner ctermfg=6
        hi! fzf_pointer ctermfg=3
        let g:fzf_colors = {
                        \ 'fg':      ['fg', 'fzf_fg'],
                        \ 'hl':      ['fg', 'fzf_hl'],
                        \ 'fg+':     ['fg', 'fzf_fgp'],
                        \ 'hl+':     ['fg', 'fzf_hlp'],
                        \ 'info':    ['fg', 'fzf_info'],
                        \ 'prompt':  ['fg', 'fzf_prompt'],
                        \ 'pointer': ['fg', 'fzf_pointer'],
                        \ 'spinner': ['fg', 'fzf_spinner'] }
        " Files
        map <F6> :Files<CR>
        map <C-F6> :History<CR>
        nnoremap <A-f> :Ag<CR>

        " :Rg
        map <F7> :Rg<CR>

        " File search
        let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/](node_modules|build|public|lib|dist)|(\.(git|svn))$',
        \ 'file': 'tags\|tags.lock\|tags.temp',
        \ }

        " Character search in file
        nmap <silent> gw <Plug>(easymotion-overwin-f2)
        let g:EasyMotion_smartcase = 1

" AIRLINE
        let g:airline_powerline_fonts = 1                                                       " Enable font for status bar
        let g:airline_theme='onedark'                                                           " Theme OneDark

        let g:airline#extensions#tabline#enabled = 1                            " Enable Tab bar
        let g:airline#extensions#tabline#left_sep = ' '                         " Enable Tab seperator
        let g:airline#extensions#tabline#left_alt_sep = '|'             " Enable Tab seperator
        let g:airline#extensions#tabline#formatter = 'default'
        let g:airline#extensions#tabline#fnamemod = ':t'                        " Set Tab name as file name
        let g:airline#extensions#whitespace#enabled = 0                         " Remove warning whitespace"

        " Tabs
        nmap <leader>1 :bp<CR>
        nmap <leader>2 :bn<CR>
        nmap <C-w> :bd<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
        " => Hotkey to run other console apps
        """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
        " Git
                nnoremap   <F8>    :FloatermNew --position=bottomleft --height=0.8 --width=0.6 --title='Git' lazygit<CR>

" Nerd Comment
        " Create default mappings
        let g:NERDCreateDefaultMappings = 1

        " Add spaces after comment delimiters by default
        let g:NERDSpaceDelims = 1

        " Use compact syntax for prettified multi-line comments
        let g:NERDCompactSexyComs = 1

        " Align line-wise comment delimiters flush left instead of following code indentation
        let g:NERDDefaultAlign = 'left'

        " Set a language to use its alternate delimiters by default
        let g:NERDAltDelims_java = 1

        " Add your own custom formats or override the defaults
        let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

        " Allow commenting and inverting empty lines (useful when commenting a region)
        let g:NERDCommentEmptyLines = 1

        " Enable trimming of trailing whitespace when uncommenting
        let g:NERDTrimTrailingWhitespace = 1

        " Enable NERDCommenterToggle to check all selected lines is commented or not
        let g:NERDToggleCheckAllLines = 1

        " Key mapping comment toggle
        nmap <C-_> <Plug>NERDCommenterToggle
        vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" COC config
        set hidden

        " Some servers have issues with backup files
        set nobackup
        set nowritebackup

        " Better display for messages
        set cmdheight=2

        " Smaller updatetime for Cursorhold
        set updatetime=300

        " Do not give ins-completion-menu message
        set shortmess+=c

        " always show signcolumns
        set signcolumn=yes

" Emmet
        let g:user_emmet_leader_key=','
        let g:user_emmet_mod='n'


" Colorizer
        lua require 'colorizer'.setup()

" Ultisnips
        let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/ultisnips']
        let g:UltiSnipsExpandTrigger="<tab>"
        let g:UltiSnipsJumpForwardTrigger="<tab>"
        let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
