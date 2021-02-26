" general remaps
let mapleader = "\<Space>"

" Unmaps
nnoremap Q <nop>

" source, save, quit
nnoremap <leader><C-r>                       :source ~/.config/nvim/init.vim<CR>

" Source Vim configuration file and install plugins
nnoremap <leader><C-r>r                      :source ~/.config/nvim/init.vim \| :PlugInstall<CR>

nnoremap <leader>qo                          :wa<CR>:only<CR>
nnoremap <leader>q                           :q!<CR>
nnoremap <silent>Q                           :Bdelete menu<CR>

" Sessions
nnoremap <silent><leader>ps                  :Obsess<CR>

" New splits
nnoremap <silent><leader>l                   :vsp<CR><C-W><C-l>
nnoremap <silent><leader>j                   :sp<CR><C-W><C-j>

" Navigate spltis
nnoremap <C-h>                               <C-w>h
nnoremap <C-j>                               <C-w>j
nnoremap <C-k>                               <C-w>k
nnoremap <C-l>                               <C-w>l

nnoremap <silent><leader>=                   <C-w><C-=>

" Resize splits
nnoremap <silent>L                           :vertical:resize +5<CR>
nnoremap <silent>J                           :resize +5<CR>
nnoremap <silent>K                           :resize -5<CR>
nnoremap <silent>H                           :vertical:resize -5<CR>

" Nav Tab
nnoremap <silent><S-Tab>                     :tabprevious<CR>
nnoremap <silent><Tab>                       :tabnext<CR>

" Go to tab by number
nnoremap <leader>1                           1gt
nnoremap <leader>2                           2gt
nnoremap <leader>3                           3gt
nnoremap <leader>4                           4gt
nnoremap <leader>5                           5gt
nnoremap <leader>6                           6gt
nnoremap <leader>7                           7gt
nnoremap <leader>8                           8gt
nnoremap <leader>9                           9gt

" nerdtree
nnoremap <silent><leader>n                   :NERDTreeToggle<CR>

" ranger
" nnoremap <leader>N                           :EditVifm .<CR>

" tabs
nnoremap <leader>to                          :TabooOpen<Space>
nnoremap <leader>tn                          :TabooRename<Space>

" prettier
nnoremap <leader>p                           :PrettierAsync<CR>

" which-key
nnoremap <silent> <leader>                   :WhichKey '<Space>'<CR>

" fzf
nnoremap <silent><C-p>                       <Esc><Esc>:Files<CR>
nnoremap <silent><C-f>                       <Esc><Esc>:BLines!<CR>
nnoremap <silent><C-e>                       <Esc><Esc>:Buffers<CR>
nnoremap <silent><F12>                       <Esc><Esc>:Rg<space><CR>

" emmet
let g:user_emmet_leader_key=                 '<C-y>'

" git-fugitive
nnoremap <leader>gs                          :G<CR>
nnoremap <leader>gc                          :Gcommit<CR>
nnoremap <leader>gpu                         :Git push<CR>
nnoremap <leader>gpl                         :Git pull<CR>
nnoremap <leader>gl                          :GV<CR>
nnoremap <leader>gb                          :GV!<CR>
nnoremap <leader>g<C-b>                      :MerginalToggle<CR>
nnoremap <leader>u                           :UndotreeShow<CR>

" git-gutter
nmap ]h                                      <Plug>(GitGutterNextHunk) "same as default
nmap [h                                      <Plug>(GitGutterPrevHunk) "same as default
nmap ghs                                     <Plug>(GitGutterStageHunk)
nmap ghu                                     <Plug>(GitGutterUndoHunk)

" goyo
nmap <silent><leader>z                       :Goyo<CR>
