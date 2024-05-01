

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', 'viw', { silent = true })

-- Remap for dealing with word wrap
-- vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
-- vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })


-- My personal mappings for this thingie.
-- My keymaps --
--

-- Window size
vim.keymap.set('n','<leader>++','<C-w>10+', {desc = 'Do 10 bigger in vertical size'})
vim.keymap.set('n','<leader>--','<C-w>10-', {desc = 'Do 10 smaller in vertical size'})
vim.keymap.set('n','<leader>>>','<C-w>10>', {desc = 'Do 10 bigger in horizontal size'})
vim.keymap.set('n','<leader><<','<C-w>10<', {desc = 'Do 10 bigger in horizontal size'})

-- "In command line mode, <up> and <down> are more intelligent that <C-n> and
-- "<C-p>, because they remember the start of the command: that is
-- ":echo <up> will go to commands that started with echo, instead of just the
-- "previous.
-- This should work, I don't understand why it doesn't.
-- Lua does not have ternary operator ?, so the idiom is a and b or c for the corresponding 
-- c a ? b or c, because and has more priority than or.
vim.keymap.set('c','<c-n>', function() return vim.fn.wildmenumode() == 1 and '<c-n>' or '<down>' end, {expr = true, desc = 'If wildmenu then do down instead of c-n'})
vim.keymap.set('c','<c-p>', function() return vim.fn.wildmenumode() == 1 and '<c-p>' or '<up>' end, {expr = true, desc = 'If wildmenu then do up instead of c-p'})
-- vim.keymap.set('c','<c-n>','<down>', {desc = 'If wildmenu then do down instead of c-n'})
-- vim.keymap.set('c','<c-p>','<up>', {desc = 'If wildmenu then do up instead of c-p'})

-- <C-l> redraws the screen in normal mode, this redraws and eliminates highlight
vim.keymap.set('n','<c-l>',':nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>', {desc = 'Redraw and remove highlight'})

-- Save file
vim.keymap.set('n','wf',':w<CR>', {desc = 'Save file'})

-- Escape from insert mode with kj
-- Do not do this in visual mode (interferes with selection)
-- or command mode (doesn't allow searching for kj)
vim.keymap.set('i','kj','<esc>:w<CR>', {desc = 'Save file'})

-- Open help in vertical split in the Right
-- Combine vertical[vert] and botright[bo] commands
vim.keymap.set('n','<leader>vh',':vertical botright help<CR>', {desc = 'Vertical help'})

-- Syntax name for current word
-- nnoremap <F10> :echo "hightlight<" . synIDattr(synID(line("."),col("."),1),"name") . '> transparent<'
-- \ . synIDattr(synID(line("."),col("."),0),"name") . "> SyntaxId<"
-- \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

-- nnoremap <leader>fe /\<error\>\|\<fail<cr>
-- nnoremap <leader>st :Startify<CR>

-- Switch horizontal split to vertical
-- Add <C-w>R to rotate it at the end
vim.keymap.set('n','<leader>htv','<C-w>t<C-w>H<C-w>R', {desc = 'Change horizontal split to vertical'})

-- Switch vertical split to horizontal
vim.keymap.set('n','<leader>vth','<C-w>t<C-w>K<C-w>R', {desc = 'Change vertical split to horizontal'})

-- nnoremap <leader>mm :make<CR>
-- nnoremap <leader>ma :AsyncRun :make<CR>
-- nnoremap <C-x><C-x><C-b> :AsyncRun cd\ $EMV_HOME\ &&\ bms\ build\ -b\ &&\ bms\ test<CR>

-- Select inner word.
vim.keymap.set('n','<space>','viw', {desc = 'Select inner word'})

-- #Seleccionar e indentar.
vim.keymap.set('n', '<c-k><c-f>', 'vi{=', {desc = 'indent inside braces'})
-- Buffers
vim.keymap.set('n','bn',':bn<cr>', {desc = 'Next buffer'})
vim.keymap.set('n','bp',':bp<cr>', {desc = 'Previous buffer'})
vim.keymap.set('n','bf',':bf<cr>', {desc = 'First buffer'})
vim.keymap.set('n','bl',':bl<cr>', {desc = 'Last buffer'})
vim.keymap.set('n','bd',':bd<cr>', {desc = 'Delete buffer'})
-- Quickfix list
vim.keymap.set('n','cn',':cn<cr>', {desc = 'Next result'})
vim.keymap.set('n','cp',':cp<cr>', {desc = 'Previous result'})
vim.keymap.set('n','cf',':cfirst<cr>', {desc = 'First result'})
vim.keymap.set('n','cl',':clast<cr>', {desc = 'Last result'})
vim.keymap.set('n','co',':copen<cr>', {desc = 'Open quicfix list'})
vim.keymap.set('n','cq',':cclose<cr>', {desc = 'Close quickfix list'})
-- Location list
-- vim.keymap.set('n','ln',':lne<cr>', {desc = 'Change vertical split to horizontal'})
-- vim.keymap.set('n','lp',':lp<cr>', {desc = 'Change vertical split to horizontal'})

-- Edit and source vimrc
vim.keymap.set('n','<leader>sv',':source $MYVIMRC<CR>', {desc = 'Source vimrc file'})
vim.keymap.set('n','<leader>ev',':e $MYVIMRC<CR>', {desc = 'Change vimrc file'})

-- Make and recover default session.
vim.keymap.set('n','<F3>',': mksession! /home/$USER/.vim/files/nacho_vim_session<CR>', {desc = 'Make the default session'})
vim.keymap.set('n','<F4>',': source! /home/$USER/.vim/files/nacho_vim_session<CR>', {desc = 'Source the default session'})

-- Save in insert mode
vim.keymap.set('i','kj','<Esc>:w<CR>', {desc='Save in insert mode'})

--Save in normal mode
vim.keymap.set('n', 'wf', ':w<CR>', {desc = 'Save in normal mode'})



-- Go only to matches in this file, does the same with both mappings
-- nnoremap ]g :execute "g/\\<" . expand("<cword>") . "\\>"<CR>:let nr = input("Which one: ")<Bar>exe "normal " . nr ."G"<CR>
-- nnoremap [g :execute "g/\\<" . expand("<cword>") . "\\>"<CR>
vim.keymap.set('n', ']g', ':execute "g/\\<" . expand("<cword>") . "\\>"<CR>:let nr = input("Which one: ")<Bar>exe "normal " . nr ."G"<CR>', {desc = 'Find references in file'})
vim.keymap.set('n', '[g', ':execute "g/\\<" . expand("<cword>") . "\\>"<CR>', {desc = 'Find references in file'})
