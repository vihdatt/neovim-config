"NERDTree
        map <F5> :NERDTreeToggle<CR>
        map <C-i> :NERDTreeFind<CR>
        let g:NERDTreePatternMatchHighlightFullName = 1
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

" VueJS
        let g:vue_pre_processors = ['pug', 'scss', 'less', 'sass', 'scss', 'typescript']

" This allows buffers to be hidden if been modified
        set hidden

" Close the current buffer and move to the previous one.
" This similar to close a tab
        nnoremap <C-N> :bnext<CR>

" Mappings to access buffers
        nnoremap <Leader>l :ls<CR>
        nnoremap <Leader>[ :bp<CR>
        nnoremap <Leader>] :bn<CR>
        nnoremap <Leader>= :e#<CR>
        nnoremap <Leader>1 :1b<CR>
        nnoremap <Leader>2 :2b<CR>
        nnoremap <Leader>3 :3b<CR>
        nnoremap <Leader>4 :4b<CR>
        nnoremap <Leader>5 :5b<CR>
        nnoremap <Leader>6 :6b<CR>
        nnoremap <Leader>7 :7b<CR>
        nnoremap <Leader>8 :8b<CR>
        nnoremap <Leader>9 :9b<CR>
        nnoremap <Leader>0 :10b<CR>

        " It's useful to show the buffer number in the status line.
        set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P<Paste>

" PRETTIER
        let g:prettier#autoformat = 0
        autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
        autocmd FileType vue syntax sync fromstart

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

        " Use TAB for trigger completion with character ahead and navigate
        inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
        inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

        function! s:check_back_space() abort
                let col = col('.') - 1
                return !col || getline('.')[col - 1]  =~# '\s'
        endfunction

        " Use <c-space> to trigger completion.
        inoremap <silent><expr> <c-space> coc#refresh()

        " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
        " Coc only does snippet and additional edit on confirm.
        inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

        " Use `[c` and `]c` to navigate diagnostics
        nmap <silent> [c <Plug>(coc-diagnostic-prev)
        nmap <silent> ]c <Plug>(coc-diagnostic-next)

        " Remap keys for gotos
        nmap <silent> gy <Plug>(coc-type-definition)
        nmap <silent> gi <Plug>(coc-implementation)
        nmap <silent> gr <Plug>(coc-references)

        " Code action on <leader> a
        vmap <leader>a <Plug>(coc-codeaction-selected)<CR>
        nmap <leader>a <Plug>(coc-codeaction-selected)<CR>

        " Format action on <leader> f
        vmap <leader>f <Plug>(coc-format-selected)<CR>
        nmap <leader>f <Plug>(coc-format-selected)<CR>

        " Goto definition
        nmap <silent> gd <Plug>(coc-definition)
        nmap <silent> gv :vsp <CR><Plug>(coc-definition) <C-W>L

        " Use K to show documentation in preview window
        nnoremap <silent> K :call <SID>show_documentation()<CR>

        function! s:show_documentation()
          if (index(['vim','help'], &filetype) >= 0)
                execute 'h '.expand('<cword>')
          else
                call CocAction('doHover')
          endif
        endfunction

        " Highlight symbol under cursor on CursorHold
        autocmd CursorHold * silent call CocActionAsync('highlight')

        " Remap for rename current word
        nmap <leader>rn <Plug>(coc-rename)

        " Remap for format selected region
        vmap <leader>f  <Plug>(coc-format-selected)
        nmap <leader>f  <Plug>(coc-format-selected)

        augroup mygroup
          autocmd!
          " Setup formatexpr specified filetype(s).
          autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
          " Update signature help on jump placeholder
          autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
        augroup end

        " Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
        vmap <leader>a  <Plug>(coc-codeaction-selected)
        nmap <leader>a  <Plug>(coc-codeaction-selected)

        " Remap for do codeAction of current line
        nmap <leader>ac  <Plug>(coc-codeaction)
        " Fix autofix problem of current line
        nmap <leader>qf  <Plug>(coc-fix-current)

        " Use `:Format` to format current buffer
        command! -nargs=0 Format :call CocAction('format')

        " Use `:Fold` to fold current buffer
        command! -nargs=? Fold :call     CocAction('fold', <f-args>)

        " Add diagnostic info for https://github.com/itchyny/lightline.vim
        let g:lightline = {
                  \ 'colorscheme': 'wombat',
                  \ 'active': {
                  \   'left': [ [ 'mode', 'paste' ],
                  \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
                  \ },
                  \ 'component_function': {
                  \   'cocstatus': 'coc#status'
                  \ },
                  \ }



        " Using CocList
        " Show all diagnostics
        nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
        " Manage extensions
        nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
        " Show commands
        nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
        " Find symbol of current document
        nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
        " Search workspace symbols
        nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
        " Do default action for next item.
        nnoremap <silent> <space>j  :<C-u>CocNext<CR>
        " Do default action for previous item.
        nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
        " Resume latest coc list
        nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

        " coc-jest
        " -----------
        " Run jest for current project
        command! -nargs=0 Jest :call  CocAction('runCommand', 'jest.projectTest')
        " Run jest for current file
        command! -nargs=0 JestCurrent :call  CocAction('runCommand', 'jest.fileTest', ['%'])
        " Run jest for current test
        nnoremap <leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>
        " Init jest in current cwd, require global jest command exists
        command! JestInit :call CocAction('runCommand', 'jest.init')

        " Coc-snippets
        " ---------------
        " Use <C-l> for trigger snippet expand.
        imap <C-l> <Plug>(coc-snippets-expand)
        " Use <C-j> for select text for visual placeholder of snippet.
        vmap <C-j> <Plug>(coc-snippets-select)
        " Use <C-j> for jump to next placeholder, it's default of coc.nvim
        let g:coc_snippet_next = '<c-j>'
        " Use <C-k> for jump to previous placeholder, it's default of coc.nvim
        let g:coc_snippet_prev = '<c-k>'
        " Use <C-j> for both expand and jump (make expand higher priority.)
        imap <C-j> <Plug>(coc-snippets-expand-jump)
        " Make <tab> used for trigger completion, completion confirm, snippet expand and jump like VSCode.
        inoremap <silent><expr> <TAB>
                  \ pumvisible() ? coc#_select_confirm() :
                  \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
                  \ <SID>check_back_space() ? "\<TAB>" :
                  \ coc#refresh()

        function! s:check_back_space() abort
          let col = col('.') - 1
          return !col || getline('.')[col - 1]  =~# '\s'
        endfunction
        let g:coc_snippet_next = '<tab>'
        " }}}

" Emmet
        let g:user_emmet_leader_key=','
        let g:user_emmet_mod='n'
