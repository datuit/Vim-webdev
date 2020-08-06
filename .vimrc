call plug#begin('~/.vim/plugged')
Plug 'metakirby5/codi.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'SirVer/ultisnips'
Plug 'vim-airline/vim-airline'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'kien/ctrlp.vim'
Plug 'voronkovich/ctrlp-nerdtree.vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'flowtype/vim-flow'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'terryma/vim-multiple-cursors'
Plug 'ryanoasis/vim-devicons'
Plug 'pangloss/vim-javascript'
Plug 'crusoexia/vim-javascript-lib'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-commentary'
Plug 'jparise/vim-graphql'
Plug 'elzr/vim-json'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-grepper'
Plug 'junegunn/goyo.vim'
Plug 'rakr/vim-one'
Plug 'mhinz/vim-startify'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>
" Empty value to disable preview window altogether
let g:fzf_preview_window = ''

" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'

nmap <silent> [c <Plug>(ale_previous_wrap)
nmap <silent> ]c <Plug>(ale_next_wrap)

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
" Fix files automatically on save
nmap <F6> <Plug>(ale_fix)
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['eslint']

" Fix files automatically on save
let g:ale_fix_on_save = 1

set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=node_modules/*,bower_components/*
let g:NERDTreeIgnore = ['^build$','^node_modules$','^dist$','^.git$']
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.tsx"
" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'
set bs=2

let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

imap jk <Esc>

syntax on

" COLORSCHEME 
set t_Co=256
" FOR LIGHT
" colorscheme one
" set background=light
" let g:airline_theme='one'
" let g:one_allow_italics = 1

" FOR DARK
colorscheme vim-monokai-tasty
let g:airline_theme='monokai_tasty'
let g:vim_monokai_tasty_italic = 1

highlight Comment cterm=italic
if (has("termguicolors"))
  set termguicolors
endif

set guifont=FiraCode\ Nerd\ Font\ 11
set noswapfile

" LINTER SETTINGS
" ------------------------------------------------

" let g:ale_fixers = {
" \ 'javascript': ['eslint']
" \ }


" let g:ale_sign_error = '@'
" let g:ale_sign_warning = '!!'

" let g:ale_fix_on_save = 0
" let g:ale_lint_on_enter = 0
" let g:ale_lint_on_insert_leave = 0
" let g:ale_lint_on_text_change = 'never'


" NERDTree
" -----------------------------------------------

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹ ",
    \ "Staged"    : "✚ ",
    \ "Untracked" : "✭ ",
    \ "Renamed"   : "➜ ",
    \ "Unmerged"  : "═ ",
    \ "Deleted"   : "✖ ",
    \ "Dirty"     : "✗ ",
    \ "Clean"     : "✔︎ ",
    \ 'Ignored'   : '☒ ',
    \ "Unknown"   : "? "
    \ }

let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '


let NERDTreeShowHidden=0
 function! StartUp()
  if 0 == argc()
    Startify
    NERDTree /var/www
  end
endfunction
autocmd VimEnter * call StartUp()

" Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" CTRL-P
" --------------------------------------------------
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_working_path_mode = 'r'
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" --------------------------------------------------
set number               
set encoding=UTF-8
set expandtab
set shiftwidth=2
set softtabstop=2
let g:UltiSnipsExpandTrigger="<C-l>"

let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html,*.htm PrettierAsync

" Key shortcuts
" ------------------------------------------------
nnoremap <F2> :buffers<CR>:buffer<Space>
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
nnoremap ı i
map <F8> ggVG
map <C-S-l> :Prettier<CR>
map <F3> :NERDTreeToggle<CR>
map <F12> :ALEGoToDefinition<CR>

autocmd GuiEnter * silent NERDTree
autocmd VimEnter * silent NERDTree

"-- AUTOCOMPLETION --"
filetype plugin on
set omnifunc=syntaxcomplete#Complete


" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

" comment out: 
" - gcc to commentout single line
" - gc to commentout the target of a motion

hi Normal guibg=NONE ctermbg=NONE
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
