local cmd = vim.cmd
local opt = vim.opt
local has = vim.fn.has

cmd('filetype plugin indent on')
cmd('syntax enable')
cmd('au TextYankPost * lua vim.highlight.on_yank {on_visual = false}')

-- systematic
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'
opt.fileencodings = { 'utf-8' }
opt.backup = false -- no .bak
opt.swapfile = false -- no .swap
opt.undofile = true -- use undo file
opt.updatetime = 300 -- time (in ms) to write to swap file
-- buffer
opt.expandtab = true -- expand tab
opt.tabstop = 4 -- tab stop
opt.softtabstop = 4 -- soft tab stop
opt.autoindent = true -- auto indent for new line
opt.shiftwidth = 4 -- auto indent shift width
-- window
opt.number = true
opt.relativenumber = true
-- editing
opt.whichwrap = 'b,s,<,>,[,]' -- cursor is able to move from end of line to next line
opt.backspace = { 'indent', 'eol', 'start' } -- backspace behaviors
opt.listchars = 'eol:¬,tab:  ,trail:~,extends:>,precedes:<,space:·' -- show whitespce characters
opt.list = true -- show tabs with listchars
opt.ignorecase = true -- search with ignore case by default
opt.smartcase = true -- search search case sensitive if search term contains uppercase letter
opt.hlsearch = true -- highlight search
opt.incsearch = true -- incrementally highlight all matches while typing
opt.inccommand = 'nosplit' -- live substitute preview
opt.completeopt = { 'menuone', 'noselect' }
opt.hidden = true
opt.cursorline = true -- show cursor line
opt.ruler = true -- show ruler line
opt.signcolumn = 'yes' -- show sign column (column of the line number)
opt.mouse = 'nv' -- enable mouse under normal and visual mode
cmd('set mousehide') -- hide mouse when characters are typed
opt.showmatch = true -- show bracket match
opt.wildmenu = true -- wildmenu, auto complete for commands
opt.wildmode = { 'longest', 'full' }
opt.splitright = true -- split to right
opt.splitbelow = true -- split to below
opt.shortmess:append('c') -- status line e.g. CTRL+G

if not has('gui_running') then
    opt.t_Co = 256
end
opt.background = 'dark'
if has('termguicolors') then
    cmd('let &t_8f = "\\<Esc>[38;2;%lu;%lu;%lum"')
    cmd('let &t_8b = "\\<Esc>[48;2;%lu;%lu;%lum"')
    opt.termguicolors = true
end
