local o = vim.opt

-- Appearance
o.colorcolumn = '80'
o.cursorline = true
o.relativenumber = true
o.showmode = false
o.signcolumn = 'yes'
o.termguicolors = true
o.wrap = false
o.ruler = false
o.guicursor = ''
o.background = 'dark'



o.expandtab = true -- convert tabs to spaces
o.shiftwidth = 2 -- the number of spaces inserted for each indentation
o.tabstop = 2 -- how many columns a tab counts for
o.termguicolors = true -- set term gui colors (most terminals support this)
o.cursorline = true -- highlight the current line
o.scrolloff = 3 -- Minimal number of screen lines to keep above and below the cursor
o.sidescrolloff = 5 -- The minimal number of columns to scroll horizontally
o.hlsearch = true -- highlight all matches on previous search pattern
o.ignorecase = true -- ignore case in search patterns
o.foldenable = false -- disable folding; enable with zi
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
o.wildmode = "full"
o.lazyredraw = true -- do not redraw screen while running macros
o.grepprg = "rg --hidden --vimgrep --smart-case --"
o.completeopt = {"menu", "menuone", "noselect", "noinsert"} -- A comma separated list of options for Insert mode completion
o.wildignorecase = true -- When set case is ignored when completing file names and directories
o.wildignore = [[
.git,.hg,.svn
*.aux,*.out,*.toc
*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
*.mp3,*.oga,*.ogg,*.wav,*.flac
*.eot,*.otf,*.ttf,*.woff
*.doc,*.pdf,*.cbr,*.cbz
*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
*.swp,.lock,.DS_Store,._*
*/tmp/*,*.so,*.swp,*.zip,**/node_modules/**,**/target/**,**.terraform/**"
]]


-- Backups
o.backup = false
o.swapfile = false

-- Completion
o.completeopt = 'menu,menuone,noselect'
o.pumheight = 8


-- General
o.clipboard = 'unnamedplus'
o.hidden = true
o.scrolloff = 8
o.sidescrolloff = 8
o.updatetime = 100
o.incsearch = true
o.errorbells = false
o.hlsearch = false
o.nu = true
o.undofile = true
o.tabstop = 2 
o.shiftwidth = 2 
o.sts = 2
o.autoindent = true


-- Tabs
o.expandtab = true
o.softtabstop = 2
o.tabstop = 2
o.smartindent = true
o.autoindent = true

-- Shortmess
o.shortmess = o.shortmess + {
  c = true
}

-- Testing
vim.g['test#strategy'] = 'neovim'
vim.g['test#neovim#term_position'] = 'below 13'

-- Auto Dart Format
vim.g.dart_format_on_save = 1

-- Snippets flutter
vim.api.nvim_command([[
    autocmd BufRead,BufNewFile,BufEnter *.dart UltiSnipsAddFiletypes dart-flutter
]])

-- Python venv
local python_path = '~/.local/venv/nvim'
if vim.fn.empty(vim.fn.glob(python_path)) == 0 then
    vim.g.python3_host_prog = python_path .. '/bin/python'
end

-- Disable bloated programs in nvim
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end
