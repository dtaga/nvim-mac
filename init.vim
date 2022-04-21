call plug#begin()

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'chriskempson/base16-vim'
" Plug 'Soares/base16.nvim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf.vim'
Plug 'Jorengarenar/vim-MvVis'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'mattn/emmet-vim'
Plug 'mengelbrecht/lightline-bufferline'
" Plug 'tomtom/tcomment_vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" Plug 'Xuyuanp/nerdtree-git-plugin'   " show git status in file tree view
" Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/grep.vim'
Plug 'tpope/vim-surround'

Plug 'NLKNguyen/papercolor-theme'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

Plug 'tpope/vim-repeat'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"	Plug 'googl/vim-colorscheme-primary'
Plug 'posva/vim-vue'
Plug 'mhinz/vim-startify'
Plug 'tomarrell/vim-npr'
Plug 'Pocco81/TrueZen.nvim'
Plug 'alvan/vim-php-manual'
Plug 'psliwka/vim-smoothie'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Mofiqul/vscode.nvim'
Plug 'wfxr/minimap.vim'
Plug 'majutsushi/tagbar'
Plug 'godlygeek/tabular'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'fannheyward/telescope-coc.nvim'
Plug 'ayu-theme/ayu-vim'
Plug 'norcalli/nvim-colorizer.lua'

call plug#end()






" set t_Co=256   " This is may or may not needed.
" set background=light
" colorscheme PaperColor

syntax enable

set t_Co=256
set background=light
set tabstop=2
set shiftwidth=2
set hidden 
set number
set ignorecase        "ignore the case when search texts
set smartcase         "if searching text contains uppercase case will not be ignored
set splitright
set splitbelow
set encoding=UTF-8
set scrolloff=3
set mouse=v                 " middle-click paste with
set mouse=a
set autoindent              " indent a new line the same amount as the line just typed
set wildmode=longest,list   " get bash-like tab completions
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set path+=**
set autoindent 

 set termguicolors
" colorscheme nuvola

colorscheme PaperColor
" colorscheme onehalfdark
" let ayucolor="dark"
" colorscheme ayu
" let g:airline_theme='onehalfdark'

let g:vue_pre_processors = []


lua require('telescope').load_extension('coc')
lua require'colorizer'.setup()




"
" highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
" set cursorline
" hi clear CursorLine
" hi CursorLine gui=underline cterm=underline
"
" hi CursorLineNR cterm=bold ctermfg=white ctermbg=69 
" augroup CLNRSet
"     autocmd! ColorScheme * hi CursorLineNR cterm=bold 
" augroup END

highlight LineNr ctermfg=black ctermbg=254

" Git column colors 
set signcolumn=number
highlight SignColumn guibg=15 ctermbg=15
highlight GitGutterAdd    guibg=#bce8c0 ctermfg=22 ctermbg=10
highlight GitGutterChange guibg=#e8e8bc ctermfg=black ctermbg=81
highlight GitGutterDelete guibg=#e8bcbc ctermfg=232 ctermbg=196

"augroup remember_folds
" autocmd!
" autocmd BufWinLeave * mkview
"autocmd BufWinEnter * silent! loadview
"augroup END




" LEADER KEY
nnoremap <SPACE> <Nop>
let mapleader = " "


let g:lightline = {
			\ 'colorscheme': 'ayu_dark',
			\ 'active': {
				\   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
				\ },
				\ 'tabline': {
					\   'left': [ ['buffers'] ],
					\ },
					\ 'component_expand': {
						\   'buffers': 'LightlineBufferline'
						\ },
						\ 'component_type': {
							\   'buffers': 'tabsel'
							\ }
							\ }

function! LightlineBufferline()
	call bufferline#refresh_status()
	return [ g:bufferline_status_info.before, g:bufferline_status_info.current, g:bufferline_status_info.after]
endfunction

let g:lightline#bufferline#show_number  = 2
let g:lightline#bufferline#enable_devicons = 0
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#clickable = 1
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline.component_raw = {'buffers': 1}
let g:lightline#bufferline#right_aligned = 0
let g:lightline#bufferline#number_map = {
			\ 0: '⁰', 1: '¹', 2: '²', 3: '³', 4: '⁴',
			\ 5: '⁵', 6: '⁶', 7: '⁷', 8: '⁸', 9: '⁹'}


" Minimap
" let g:minimap_width = 10
" let g:minimap_auto_start = 1
" let g:minimap_auto_start_win_enter = 1
" let g:minimap_highlight_search = 1
" let g:minimap_git_colors = 1

let g:lightline.tabline          = {'left': [['buffers']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
set showtabline=2
" let g:airline#extensions#tabline#enabled = 1
" let base16colorspace=256
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)


nnoremap <F1> :noh<CR>
inoremap <F1> <esc>

nmap <Leader>/ f{zf%
nmap <Leader>// f}zf%


" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = ['.git']
let g:NERDTreeStatusline = ''
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeChDirMode=0

let g:NERDTreeGitStatusWithFlags = 1
" let g:NERDTreeIndicatorMapCustom = {
"     \ "Modified"  : "?",
"     \ "Staged"    : "?",
"     \ "Untracked" : "?",
"     \ "Renamed"   : "?",
"     \ "Unmerged"  : "?",
"     \ "Deleted"   : "?",
"     \ "Dirty"     : "?",
"     \ "Clean"     : "??",
"     \ 'Ignored'   : '?',
"     \ "Unknown"   : "?"
"     \ }

let g:NERDTreeGitStatusUseNerdFonts = '0'
let g:NERDTreeGitStatusMapNextHunk = ']c'
let g:NERDTreeGitStatusPorcelainVersion = '2'
let g:NERDTreeGitStatusMapPrevHunk = '[c'
let g:NERDTreeGitStatusUntrackedFilesMode = 'normal'
let g:NERDTreeGitStatusEnable = '1'
let g:NERDTreeGitStatusAlignIfConceal = '1'
let g:NERDTreeGitStatusConcealBrackets = 1

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeColorMapCustom = {
    \ "Modified"  : "#528AB3",  
    \ "Staged"    : "#538B54",  
    \ "Untracked" : "#BE5849",  
    \ "Dirty"     : "#299999",  
    \ "Clean"     : "#87939A",   
    \ "Ignored"   : "#808080"   
    \ }

" json 
" let g:indentLine_setConceal = 0

let g:fzf_action = {
			\ 'ctrl-t': 'tab split',
			\ 'ctrl-s': 'split',
			\ 'ctrl-v': 'vsplit'
			\}



"""""""""""""""""""""""""""""""""""""""""""""""""""" SHORTCUTS 
nnoremap <leader><CR> :noh<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>d <esc>yyp
nnoremap <leader>f :Files<CR>
nnoremap <leader>/  <esc>$zf%<CR>
" nnoremap <C-SPACE> :CocAction<CR>
" xnoremap <C-SPACE> :CocAction<CR>
" switch buffers
nnoremap <A-2> :bnext<CR>
nnoremap <A-1> :bprev<CR>
" close buffers
nnoremap <leader>q :bd<CR> 
nnoremap <silent> <leader>b :NERDTreeToggle<CR>
" this is for long text lines.. to move visually down
nnoremap j gj
nnoremap k gk
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>
nnoremap <C-f> :Ag <C-R><C-W><CR>


noremap <C-Right> :GitGutterNextHunk<CR>
noremap <C-Left> :GitGutterPrevHunk<CR>

" emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,vue EmmetInstall
let g:user_emmet_mode='a'
let g:user_emmet_leader_key=','
let g:tagalong_verbose = 1
imap <expr> <C-Space> emmet#expandAbbrIntelligent("\<tab>")


" CTRLP
"
" if executable('rg')
" 	let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
" endif
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*/.git/*,*/node_modules/*,*/vendor/*,*/dist/*,*.so,*.swp,*.zip

highlight Comment cterm=italic ctermfg=black ctermbg=230 guifg=black guibg=#eefcde




" highlight StatusLineNC cterm=bold ctermfg=white ctermbg=black
" hi CursorLine   cterm=NONE ctermbg=193 cterm=bold 
hi Visual  ctermbg=189 cterm=bold ctermfg=NONE
hi Search  ctermbg=LightBlue cterm=bold ctermfg=NONE
hi String  ctermbg=NONE cterm=italic ctermfg=56
hi Function  ctermbg=NONE cterm=bold ctermfg=169

" blink cursor
set guicursor=a:blinkwait5-blinkon5-blinkoff5

" highlight Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold

hi htmlTagVIF ctermbg=230 ctermfg=red cterm=bold
call matchadd('htmlTagVIF', '\<v-if\>\ze')
call matchadd('htmlTagVIF', '\<v-else\>\ze')

hi htmlTagCLICK ctermbg=193 ctermfg=28 cterm=bold
call matchadd('htmlTagCLICK', '\<click.prevent\>\ze')
call matchadd('htmlTagCLICK', '\<change\>\ze=')

hi htmlTagVFOR ctermbg=blue ctermfg=white cterm=bold
call matchadd('htmlTagVFOR', '\<v-for\>\ze')

hi htmlTagVMODEL ctermbg=193 ctermfg=black cterm=bold
call matchadd('htmlTagVMODEL', '\<v-model\>\ze')


hi vueMethods ctermbg=NONE ctermfg=black cterm=bold
call matchadd('vueMethods', '\<methods\>\ze:')
call matchadd('vueMethods', '\<components\>\ze:')
call matchadd('vueMethods', '\<computed\>\ze:')
call matchadd('vueMethods', '\<destroy\>\ze()')
call matchadd('vueMethods', '\<created\>\ze()')
call matchadd('vueMethods', '\<data\>\ze()')

hi SpecialKey ctermfg=254 guifg=#d9d9d9
hi NonText ctermfg=254 guifg=#d9d9d9


          "


runtime macros/matchit.vime


" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list



lua << EOF
vim.opt.listchars = {
	space = '·',
	trail = '·',
	eol = "↴",
	tab = '│·',
}

require("indent_blankline").setup {
	show_end_of_line = true,
	space_char_blankline = " ",
}
EOF




set relativenumber
set number
set number relativenumber

let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true

" maximise pane 
map <F5> <C-W>_<C-W><Bar>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" COC
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
"if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
"  set signcolumn=number
" else
  set signcolumn=yes
" endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
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
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)<cr>
nmap <leader>a  <Plug>(coc-codeaction-selected)<cr>

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)




"" PHP 

if executable('intelephense')
  augroup LspPHPIntelephense
    au!
    au User lsp_setup call lsp#register_server({
        \ 'name': 'intelephense',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'intelephense --stdio']},
        \ 'whitelist': ['php'],
        \ 'initialization_options': {'storagePath': '/tmp/intelephense'},
        \ 'workspace_config': {
        \   'intelephense': {
        \     'files': {
        \       'maxSize': 1000000,
        \       'associations': ['*.php', '*.phtml'],
        \       'exclude': [],
        \     },
        \     'completion': {
        \       'insertUseDeclaration': v:true,
        \       'fullyQualifyGlobalConstantsAndFunctions': v:false,
        \       'triggerParameterHints': v:true,
        \       'maxItems': 100,
        \     },
        \     'format': {
        \       'enable': v:true
        \     },
        \   },
        \ }
        \})
  augroup END
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
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

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

autocmd CursorHold * silent call CocActionAsync('highlight')
nnoremap <silent> <space>y  :<C-u>CocList -A --number-select yank<cr>


" Find files using Telescope command-line sugar.
" nnoremap <Leader>p :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ winblend = 30 }))<cr>
nnoremap <Leader>p :lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.8}})<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <Leader>c  :Telescope coc commands<cr>
