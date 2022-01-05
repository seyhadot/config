-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/sino/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/sino/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/sino/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/sino/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/sino/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["awesome-flutter-snippets"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/opt/awesome-flutter-snippets",
    url = "https://github.com/Nash0x7E2/awesome-flutter-snippets"
  },
  black = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/opt/black",
    url = "https://github.com/psf/black"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-emoji"] = {
    after_files = { "/Users/sino/.local/share/nvim/site/pack/packer/opt/cmp-emoji/after/plugin/cmp_emoji.lua" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/opt/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-ultisnips"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/cmp-nvim-ultisnips",
    url = "https://github.com/quangnguyen30192/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["dart-vim-plugin"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/opt/dart-vim-plugin",
    url = "https://github.com/dart-lang/dart-vim-plugin"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n�\r\0\0\4\0\30\0%6\0\0\0009\0\1\0'\1\3\0=\1\2\0'\1\5\0=\1\4\0)\1\1\0=\1\6\0005\1\v\0005\2\t\0005\3\b\0=\3\n\2=\2\f\0015\2\14\0005\3\r\0=\3\n\2=\2\15\0015\2\17\0005\3\16\0=\3\n\2=\2\18\0015\2\20\0005\3\19\0=\3\n\2=\2\21\0015\2\23\0005\3\22\0=\3\n\2=\2\24\0015\2\26\0005\3\25\0=\3\n\2=\2\27\1=\1\a\0005\1\29\0=\1\28\0K\0\1\0\1\v\0\0\5\5\5�\1 ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗�\1 ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║�\1 ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║�\1 ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║�\1 ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║�\1 ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝\5\28dashboard_custom_header\rnew_file\1\0\1\fcommand\23new | wincmd j | q\1\2\0\0005  New file                            SPC x x\23change_colorscheme\1\0\1\fcommand\vColors\1\2\0\0005  Change colorscheme                  SPC x x\16open_config\1\0\1\fcommand;new | wincmd j | q | cd ~/.config/nvim/ | e ./init.lua\1\2\0\0005  Open Config                         SPC x x\14find_word\1\0\1\fcommand\aAg\1\2\0\0005  Find  word                          SPC f s\17find_history\1\0\1\fcommand\fHistory\1\2\0\0005  Recently opened files               SPC x x\15find_files\1\0\0\16description\1\0\1\fcommand\nFiles\1\2\0\0006  Find files                          SPC p s \29dashboard_custom_section!dashboard_disable_statusline\n🐬 \26dashboard_footer_icon\bfzf dashboard_default_executive\6g\bvim\0" },
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["flutter-tools.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\b\0\r\0\0196\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\5\0005\5\4\0=\5\6\0045\5\n\0005\6\b\0005\a\a\0=\a\t\6=\6\v\5=\5\f\4B\2\2\1K\0\1\0\blsp\rsettings\1\0\0\28analysisExcludedFolders\1\0\0\1\3\0\0\29/home/oscargl/.pub-cache\"/development/flutter/packages\rdebugger\1\0\0\1\0\1\fenabled\2\nsetup\18flutter-tools\frequire\npcall\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/opt/flutter-tools.nvim",
    url = "https://github.com/akinsho/flutter-tools.nvim"
  },
  ["formatter.nvim"] = {
    config = { 'require("config/formatter")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/opt/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  fzf = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\6\1$\0J5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\5\1=\1\a\0-\1\0\0009\1\5\1=\1\b\0-\1\0\0009\1\t\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\16\1=\1\17\0-\1\0\0009\1\18\1=\1\19\0-\1\0\0009\1\18\1=\1\20\0-\1\0\0009\1\0\1=\1\21\0-\1\0\0009\1\0\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0-\1\0\0009\1\0\1=\1\28\0006\1\29\0009\1\30\0019\1\31\1'\3 \0006\4\29\0009\4!\0049\4\"\4B\4\1\0028\4\4\0&\3\4\3B\1\2\1'\1#\0L\1\2\0\5�\t▊ \tmode\afn\27hi GalaxyViMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\bred\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\vpurple\6i\ngreen\6n\1\0\0\tblue\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t T\0\0\2\0\4\0\v5\0\0\0006\1\1\0009\1\2\0019\1\3\0018\1\1\0\15\0\1\0X\2\2�+\1\1\0L\1\2\0+\1\2\0L\1\2\0\rfiletype\abo\bvim\1\0\2\14dashboard\2\6 \2a\0\0\5\0\6\0\n'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\2'\2\5\0&\0\2\0L\0\2\0\6 \15shiftwidth\24nvim_buf_get_option\bapi\bvim\rSpaces: \17\0\0\1\0\1\0\2'\0\0\0L\0\2\0\6 �\27\1\0\16\0~\0�\0036\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\0\0X\4\3�\14\0\2\0X\4\1�2\0��5\4\4\0005\5\5\0009\6\6\4=\6\6\0059\6\a\4=\6\b\0059\6\t\4=\6\n\0059\6\t\4=\6\v\0059\6\n\4=\6\f\0059\6\r\4=\6\r\0059\6\14\4=\6\14\0059\6\14\4=\6\15\0059\6\16\4=\6\17\0059\6\16\4=\6\16\0059\6\18\4=\6\19\0059\6\18\4=\6\18\0059\6\20\4=\6\20\0059\6\20\4=\6\21\0059\6\20\4=\6\22\0059\6\23\4=\6\23\0059\6\23\4=\6\24\0059\6\25\4=\6\25\0059\6\26\4=\6\26\0059\6\27\0015\a\29\0=\a\28\0016\a\30\0009\a\31\a9\t \0065\n&\0005\v\"\0003\f!\0=\f#\v4\f\3\0009\r\23\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\v'\nB\a\3\0016\a(\0006\t)\0009\t*\t9\t+\t)\v\0\0'\f,\0B\t\3\0A\a\0\0016\a)\0009\a*\a9\a+\a)\t\0\0'\n,\0B\a\3\0016\a\30\0009\a\31\a9\t \0065\n3\0005\v.\0003\f-\0=\f#\v9\f/\3=\f0\v5\f1\0009\r$\5>\r\2\f=\f2\v4\f\3\0009\r\16\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\v4\nB\a\3\0016\a\30\0009\a\31\a9\t \0065\n7\0005\v5\0009\f/\3=\f0\v5\f6\0009\r$\5>\r\2\f=\f2\v4\f\3\0009\r\26\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\v8\nB\a\3\0016\a\30\0009\a\31\a9\t \0065\n=\0005\v9\0009\f:\3=\f0\v4\f\3\0006\r\1\0'\15;\0B\r\2\0029\r<\r>\r\1\f9\r$\5>\r\2\f=\f%\v=\v>\nB\a\3\0016\a\30\0009\a\31\a9\t \0065\n@\0005\v?\0009\f:\3=\f0\v4\f\3\0009\r\26\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vA\nB\a\3\0016\a\30\0009\a\31\a9\t \0065\nD\0005\vB\0009\fC\3=\f0\v4\f\3\0009\r\14\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vE\nB\a\3\0016\a\30\0009\a\31\a9\t \0065\nG\0005\vF\0009\fC\3=\f0\v4\f\3\0009\r\20\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vH\nB\a\3\0016\a\30\0009\a\31\a9\t \0065\nJ\0005\vI\0009\fC\3=\f0\v4\f\3\0009\r\23\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vK\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\nN\0005\vM\0004\f\3\0009\r\24\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vO\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\nQ\0005\vP\0004\f\3\0009\r\16\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vR\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\nT\0005\vS\0004\f\3\0009\r\21\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vU\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\nW\0005\vV\0004\f\3\0009\r\f\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vX\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\n[\0005\vY\0003\fZ\0=\f0\v4\f\3\0009\r\26\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\v\\\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\n_\0005\v]\0005\f^\0009\r$\5>\r\2\f=\f2\v4\f\3\0009\r\26\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\v`\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\nc\0005\va\0005\fb\0009\r$\5>\r\2\f=\f2\v4\f\3\0009\r\26\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vd\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\nh\0005\vf\0003\fe\0=\f#\v9\fC\3=\f0\v5\fg\0009\r$\5>\r\2\f=\f2\v4\f\3\0009\r\26\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vi\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\nl\0005\vj\0009\fC\3=\f0\v5\fk\0009\r$\5>\r\2\f=\f2\v4\f\3\0009\r\26\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vm\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\np\0005\vn\0009\fC\3=\f0\v5\fo\0009\r$\5>\r\2\f=\f2\v4\f\3\0009\r\26\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vq\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\nu\0005\vs\0003\fr\0=\f#\v5\ft\0009\r$\5>\r\2\f=\f2\v4\f\3\0009\r\16\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vv\nB\a\3\0016\a\30\0009\a\31\a9\tw\0065\nz\0005\vx\0005\fy\0009\r$\5>\r\2\f=\f2\v4\f\3\0009\r\26\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vm\nB\a\3\0016\a\30\0009\a\31\a9\tw\0065\n|\0005\v{\0009\f:\3=\f0\v4\f\3\0009\r\26\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\v}\nB\a\3\0012\0\0�K\0\1\0K\0\1\0\14SFileName\1\0\0\1\0\1\rprovider\14SFileName\1\0\0\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\17FileTypeName\20short_line_left\nSpace\1\0\0\1\2\0\0\tNONE\1\0\1\14separator\6 \0\15FileEncode\1\0\0\1\2\0\0\tNONE\1\0\2\rprovider\15FileEncode\14separator\6 \15BufferType\1\0\0\1\2\0\0\tNONE\1\0\2\rprovider\17FileTypeName\14separator\6 \fTabstop\1\0\0\1\2\0\0\tNONE\1\0\1\14separator\6 \0\fPerCent\1\0\0\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\16LinePercent\rLineInfo\1\0\0\1\2\0\0\tNONE\1\0\2\14separator\a  \rprovider\15LineColumn\18ShowLspClient\1\0\0\0\1\0\2\rprovider\17GetLspClient\ticon\n  \19DiagnosticInfo\1\0\0\1\0\2\ticon\n  \rprovider\19DiagnosticInfo\19DiagnosticHint\1\0\0\1\0\2\ticon\n  \rprovider\19DiagnosticHint\19DiagnosticWarn\1\0\0\1\0\2\ticon\n  \rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\1\0\2\ticon\n  \rprovider\20DiagnosticError\nright\15DiffRemove\1\0\0\1\0\2\rprovider\15DiffRemove\ticon\n  \17DiffModified\1\0\0\1\0\2\rprovider\17DiffModified\ticon\t 柳\fDiffAdd\1\0\0\18hide_in_width\1\0\2\rprovider\fDiffAdd\ticon\n  \rFileName\1\0\0\1\0\1\rprovider\rFileName\rFileIcon\1\0\0\24get_file_icon_color!galaxyline.provider_fileinfo\21buffer_not_empty\1\0\1\rprovider\rFileIcon\14GitBranch\1\0\0\1\2\0\0\tNONE\1\0\2\rprovider\14GitBranch\14separator\6 \fGitIcon\1\0\0\24separator_highlight\1\2\0\0\tNONE\14condition\24check_git_workspace\1\0\1\14separator\6 \0\ats\14getbufvar\afn\bvim\nprint\vViMode\1\0\0\14highlight\abg\rprovider\1\0\0\0\tleft\vinsert\ntable\1\5\0\0\rNvimTree\nvista\tdbui\vpacker\20short_line_list\fsection\tgrey\nblack\14error_red\bred\15light_blue\15vivid_blue\tblue\fmagenta\vpurple\18string_orange\vorange\16light_green\ngreen\tcyan\16info_yellow\16dark_yellow\vyellow\14bg_yellow\15section_bg\bbg0\afg\1\0\3\rfg_focus\f#f8f8f2\16bg_inactive\f#282a36\abg\f#282a36\1\0\25\tbg_d\f#141b24\bbg1\f#21283b\fbg_blue\f#54b0fd\bbg0\f#1a212e\vyellow\f#efbd5d\nblack\f#0c0e15\tgrey\f#455574\14diff_text\f#1c4a6e\rdark_red\f#992525\16diff_change\f#102b40\16dark_purple\f#862aa1\16diff_delete\f#331c1e\rdiff_add\f#27341c\tblue\f#41a7fc\16dark_yellow\f#8f610d\vorange\f#dd9046\14dark_cyan\f#1b6a73\ngreen\f#8bcd5b\vpurple\f#c75ae8\afg\f#93a4c3\14bg_yellow\f#f2cc81\bred\f#f65866\tcyan\f#34bfd0\bbg3\f#2a324a\bbg2\f#283347\25galaxyline.condition\15galaxyline\frequire\npcall\0" },
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/galaxyline.nvim",
    url = "https://github.com/glepnir/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n�\5\0\0\a\0\v\0\0176\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\t\0005\5\5\0005\6\4\0=\6\6\0055\6\a\0=\6\b\5=\5\n\4B\2\2\1K\0\1\0\fkeymaps\1\0\0\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\0\b\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17n <leader>gs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\nsetup\rgitsigns\frequire\npcall\0" },
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gv.vim"] = {
    load_after = {
      ["vim-fugitive"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/opt/gv.vim",
    url = "https://github.com/junegunn/gv.vim"
  },
  ["hop.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/opt/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\6\0\t\0\0156\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\4B\2\2\1K\0\1\0\20buftype_exclude\1\2\0\0\rterminal\21filetype_exclude\1\v\0\0\thelp\rterminal\14dashboard\rstartify\rNvimTree\rmarkdown\ttext\vpacker\18lsp-installer\5\1\0\3\28show_first_indent_level\3\0#show_trailing_blankline_indent\3\0\tchar\b▏\nsetup\21indent_blankline\frequire\npcall\0" },
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\4\0\v\0\0256\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\t\0005\3\n\0B\0\3\1K\0\1\0\1\0\3\vtexthl\"LspDiagnosticsSignInformation\nnumhl\"LspDiagnosticsSignInformation\ttext\b\"LspDiagnosticsSignInformation\1\0\3\vtexthl\27LspDiagnosticsSignHint\nnumhl\27LspDiagnosticsSignHint\ttext\b\27LspDiagnosticsSignHint\1\0\3\vtexthl\30LspDiagnosticsSignWarning\nnumhl\30LspDiagnosticsSignWarning\ttext\b\30LspDiagnosticsSignWarning\1\0\3\vtexthl\28LspDiagnosticsSignError\nnumhl\28LspDiagnosticsSignError\ttext\b\28LspDiagnosticsSignError\16sign_define\afn\bvim\0" },
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/tami5/lspsaga.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://github.com/preservim/nerdcommenter"
  },
  nerdtree = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim",
    url = "https://github.com/christianchiarulli/nvcode-color-schemes.vim"
  },
  ["nvim-autopairs"] = {
    config = { 'require("config/autopairs")' },
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n�\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20�6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2:\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\19UltiSnips#Anon\afn\bvim�\1\0\1\3\2\6\0\21-\1\0\0009\1\0\1B\1\1\2\14\0\1\0X\1\15�6\1\1\0009\1\2\0019\1\3\1\6\1\4\0X\1\b�-\1\1\0B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\5\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\1�\2�\rcomplete\vprompt\fbuftype\abo\bvim\21select_next_item�\1\0\1\3\2\6\0\21-\1\0\0009\1\0\1B\1\1\2\14\0\1\0X\1\15�6\1\1\0009\1\2\0019\1\3\1\6\1\4\0X\1\b�-\1\1\0B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\5\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\1�\2�\rcomplete\vprompt\fbuftype\abo\bvim\21select_prev_item�\4\1\0\f\0%\0<6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0004�3\2\3\0006\3\1\0'\5\4\0B\3\2\0029\4\5\0015\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\17\0009\b\v\0019\b\f\b5\n\r\0009\v\14\0019\v\15\v=\v\16\nB\b\2\2=\b\18\a3\b\19\0=\b\20\a3\b\21\0=\b\22\a9\b\v\0019\b\23\bB\b\1\2=\b\24\a=\a\v\0064\a\b\0005\b\25\0>\b\1\a5\b\26\0>\b\2\a5\b\27\0>\b\3\a5\b\28\0>\b\4\a5\b\29\0>\b\5\a5\b\30\0>\b\6\a5\b\31\0>\b\a\a=\a \0065\a\"\0009\b!\3B\b\1\2=\b#\a=\a$\6B\4\2\0012\0\0�K\0\1\0K\0\1\0\15formatting\vformat\1\0\0\15cmp_format\fsources\1\0\1\tname\nemoji\1\0\1\tname\vbuffer\1\0\1\tname\tcalc\1\0\1\tname\14ultisnips\1\0\1\tname\nvsnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\14<C-Space>\rcomplete\f<S-Tab>\0\n<Tab>\0\t<CR>\1\0\0\rbehavior\vInsert\20ConfirmBehavior\1\0\1\vselect\1\fconfirm\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\flspkind\0\bcmp\frequire\npcall\0" },
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-cursorword"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/nvim-cursorword",
    url = "https://github.com/xiyaowong/nvim-cursorword"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\ng\0\0\5\0\a\0\f6\0\0\0009\0\1\0009\0\2\0'\2\3\0006\3\0\0009\3\1\0039\3\4\3B\3\1\2'\4\5\0&\3\4\3'\4\6\0D\0\4\0\tfile\6/\vgetcwd\25Path to executable: \ninput\afn\bvimg\0\0\5\0\a\0\f6\0\0\0009\0\1\0009\0\2\0'\2\3\0006\3\0\0009\3\1\0039\3\4\3B\3\1\2'\4\5\0&\3\4\3'\4\6\0D\0\4\0\tfile\6/\vgetcwd\25Path to executable: \ninput\afn\bvim�\a\1\0\6\0\26\00016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0)�9\2\3\0015\3\5\0=\3\4\0029\2\6\0014\3\3\0005\4\b\0003\5\t\0=\5\n\4>\4\1\0035\4\v\0003\5\f\0=\5\n\4>\4\2\3=\3\a\0029\2\3\0015\3\14\0005\4\15\0=\4\16\3=\3\r\0029\2\6\0014\3\3\0005\4\17\0>\4\1\3=\3\r\0029\2\6\0019\3\6\0019\3\a\3=\3\18\0026\2\19\0009\2\20\0029\2\21\2'\4\22\0005\5\23\0B\2\3\0016\2\19\0009\2\20\0029\2\21\2'\4\24\0005\5\25\0B\2\3\1K\0\1\0K\0\1\0\1\0\4\vtexthl\5\vlinehl\5\nnumhl\5\ttext\b\15DapStopped\1\0\4\vtexthl\5\vlinehl\5\nnumhl\5\ttext\t🔴\18DapBreakpoint\16sign_define\afn\bvim\6c\1\0\a\16dartSdkPath-/development/flutter/bin/cache/dart-sdk/\ttype\tdart\frequest\vlaunch\tname\19Launch flutter\fprogram%${workspaceFolder}/lib/main.dart\bcwd\23${workspaceFolder}\19flutterSdkPath\25/development/flutter\targs\1\3\0\0-/development/Dart-Code/out/dist/debug.js\fflutter\1\0\2\ttype\15executable\fcommand\tnode\tdart\0\1\0\a\frequest\vlaunch\ttype\vcppdbg\vMIMode\bgdb\tname\30Attach to gdbserver :1234\28miDebuggerServerAddress\19localhost:1234\bcwd\23${workspaceFolder}\19miDebuggerPath\17/usr/bin/gdb\fprogram\0\1\0\5\frequest\vlaunch\ttype\vcppdbg\tname\16Launch file\16stopOnEntry\2\bcwd\23${workspaceFolder}\bcpp\19configurations\1\0\2\ttype\15executable\fcommand?/development/cpptools/extension/debugAdapters/OpenDebugAD7\vcppdbg\radapters\bdap\frequire\npcall\0" },
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ndapui\frequire\0" },
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\n�\1\0\1\6\0\v\0\0174\1\0\0009\2\0\0\a\2\1\0X\2\b�5\2\b\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\a\3=\3\t\2=\2\2\1\18\4\0\0009\2\n\0\18\5\1\0B\2\3\1K\0\1\0\nsetup\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\rsettings\16sumneko_lua\tname�\1\1\0\5\0\a\0\0156\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0\a�9\2\3\0015\4\4\0B\2\2\0019\2\5\0013\4\6\0B\2\2\1K\0\1\0K\0\1\0\0\20on_server_ready\1\0\1\21install_root_dir\29/development/lsp_servers\rsettings\23nvim-lsp-installer\frequire\npcall\0" },
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n�\4\0\0\b\0\25\0#6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0006\2\3\0009\2\4\2)\3\1\0=\3\5\2)\3\1\0=\3\6\0029\3\a\0015\5\b\0005\6\t\0=\6\n\0055\6\v\0005\a\f\0=\a\r\6=\6\14\0055\6\15\0004\a\0\0=\a\16\6=\6\17\0055\6\18\0004\a\0\0=\a\19\6=\6\20\0055\6\22\0005\a\21\0=\a\23\6=\6\24\5B\3\2\1K\0\1\0\ffilters\vcustom\1\0\0\1\4\0\0\t.git\17node_modules\v.cache\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\2\16diagnostics\nicons\1\0\4\nerror\b\tinfo\b\thint\b\fwarning\b\1\0\1\venable\2\23ignore_ft_on_setup\1\3\0\0\rstartify\14dashboard\1\0\3\15update_cwd\2\15auto_close\1\18open_on_setup\2\nsetup%nvim_tree_highlight_opened_files\27nvim_tree_quit_on_open\6g\bvim\14nvim-tree\frequire\npcall\0" },
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n�\2\0\0\a\0\f\0\0196\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\5\0005\5\4\0=\5\6\0044\5\0\0=\5\a\0045\5\b\0005\6\t\0=\6\n\5=\5\v\4B\2\2\1K\0\1\0\14highlight\fdisable\1\3\0\0\bcss\thtml\1\0\2&additional_vim_regex_highlighting\1\venable\2\19ignore_install\21ensure_installed\1\0\0\1\v\0\0\tbash\blua\tdart\tjson\tyaml\vpython\bcpp\15typescript\bcss\tscss\nsetup\28nvim-treesitter.configs\frequire\npcall\0" },
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  undotree = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    after = { "gv.vim" },
    commands = { "Git", "GV" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/opt/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/vim-polyglot",
    url = "https://github.com/sheerun/vim-polyglot"
  },
  ["vim-react-snippets"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/opt/vim-react-snippets",
    url = "https://github.com/mlaursen/vim-react-snippets"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-test"] = {
    commands = { "TestFile", "TestLast", "TestNearest", "TestSuite", "TestVisit" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/opt/vim-test",
    url = "https://github.com/vim-test/vim-test"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n\\\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\nicons\1\0\0\1\0\1\14separator\a->\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/Users/sino/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^vim%-vsnip"] = "friendly-snippets"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\2\0\0\a\0\f\0\0196\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\5\0005\5\4\0=\5\6\0044\5\0\0=\5\a\0045\5\b\0005\6\t\0=\6\n\5=\5\v\4B\2\2\1K\0\1\0\14highlight\fdisable\1\3\0\0\bcss\thtml\1\0\2&additional_vim_regex_highlighting\1\venable\2\19ignore_install\21ensure_installed\1\0\0\1\v\0\0\tbash\blua\tdart\tjson\tyaml\vpython\bcpp\15typescript\bcss\tscss\nsetup\28nvim-treesitter.configs\frequire\npcall\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\6\1$\0J5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\5\1=\1\a\0-\1\0\0009\1\5\1=\1\b\0-\1\0\0009\1\t\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\16\1=\1\17\0-\1\0\0009\1\18\1=\1\19\0-\1\0\0009\1\18\1=\1\20\0-\1\0\0009\1\0\1=\1\21\0-\1\0\0009\1\0\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0-\1\0\0009\1\0\1=\1\28\0006\1\29\0009\1\30\0019\1\31\1'\3 \0006\4\29\0009\4!\0049\4\"\4B\4\1\0028\4\4\0&\3\4\3B\1\2\1'\1#\0L\1\2\0\5�\t▊ \tmode\afn\27hi GalaxyViMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\bred\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\vpurple\6i\ngreen\6n\1\0\0\tblue\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t T\0\0\2\0\4\0\v5\0\0\0006\1\1\0009\1\2\0019\1\3\0018\1\1\0\15\0\1\0X\2\2�+\1\1\0L\1\2\0+\1\2\0L\1\2\0\rfiletype\abo\bvim\1\0\2\14dashboard\2\6 \2a\0\0\5\0\6\0\n'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\2'\2\5\0&\0\2\0L\0\2\0\6 \15shiftwidth\24nvim_buf_get_option\bapi\bvim\rSpaces: \17\0\0\1\0\1\0\2'\0\0\0L\0\2\0\6 �\27\1\0\16\0~\0�\0036\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\0\0X\4\3�\14\0\2\0X\4\1�2\0��5\4\4\0005\5\5\0009\6\6\4=\6\6\0059\6\a\4=\6\b\0059\6\t\4=\6\n\0059\6\t\4=\6\v\0059\6\n\4=\6\f\0059\6\r\4=\6\r\0059\6\14\4=\6\14\0059\6\14\4=\6\15\0059\6\16\4=\6\17\0059\6\16\4=\6\16\0059\6\18\4=\6\19\0059\6\18\4=\6\18\0059\6\20\4=\6\20\0059\6\20\4=\6\21\0059\6\20\4=\6\22\0059\6\23\4=\6\23\0059\6\23\4=\6\24\0059\6\25\4=\6\25\0059\6\26\4=\6\26\0059\6\27\0015\a\29\0=\a\28\0016\a\30\0009\a\31\a9\t \0065\n&\0005\v\"\0003\f!\0=\f#\v4\f\3\0009\r\23\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\v'\nB\a\3\0016\a(\0006\t)\0009\t*\t9\t+\t)\v\0\0'\f,\0B\t\3\0A\a\0\0016\a)\0009\a*\a9\a+\a)\t\0\0'\n,\0B\a\3\0016\a\30\0009\a\31\a9\t \0065\n3\0005\v.\0003\f-\0=\f#\v9\f/\3=\f0\v5\f1\0009\r$\5>\r\2\f=\f2\v4\f\3\0009\r\16\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\v4\nB\a\3\0016\a\30\0009\a\31\a9\t \0065\n7\0005\v5\0009\f/\3=\f0\v5\f6\0009\r$\5>\r\2\f=\f2\v4\f\3\0009\r\26\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\v8\nB\a\3\0016\a\30\0009\a\31\a9\t \0065\n=\0005\v9\0009\f:\3=\f0\v4\f\3\0006\r\1\0'\15;\0B\r\2\0029\r<\r>\r\1\f9\r$\5>\r\2\f=\f%\v=\v>\nB\a\3\0016\a\30\0009\a\31\a9\t \0065\n@\0005\v?\0009\f:\3=\f0\v4\f\3\0009\r\26\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vA\nB\a\3\0016\a\30\0009\a\31\a9\t \0065\nD\0005\vB\0009\fC\3=\f0\v4\f\3\0009\r\14\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vE\nB\a\3\0016\a\30\0009\a\31\a9\t \0065\nG\0005\vF\0009\fC\3=\f0\v4\f\3\0009\r\20\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vH\nB\a\3\0016\a\30\0009\a\31\a9\t \0065\nJ\0005\vI\0009\fC\3=\f0\v4\f\3\0009\r\23\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vK\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\nN\0005\vM\0004\f\3\0009\r\24\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vO\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\nQ\0005\vP\0004\f\3\0009\r\16\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vR\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\nT\0005\vS\0004\f\3\0009\r\21\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vU\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\nW\0005\vV\0004\f\3\0009\r\f\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vX\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\n[\0005\vY\0003\fZ\0=\f0\v4\f\3\0009\r\26\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\v\\\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\n_\0005\v]\0005\f^\0009\r$\5>\r\2\f=\f2\v4\f\3\0009\r\26\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\v`\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\nc\0005\va\0005\fb\0009\r$\5>\r\2\f=\f2\v4\f\3\0009\r\26\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vd\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\nh\0005\vf\0003\fe\0=\f#\v9\fC\3=\f0\v5\fg\0009\r$\5>\r\2\f=\f2\v4\f\3\0009\r\26\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vi\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\nl\0005\vj\0009\fC\3=\f0\v5\fk\0009\r$\5>\r\2\f=\f2\v4\f\3\0009\r\26\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vm\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\np\0005\vn\0009\fC\3=\f0\v5\fo\0009\r$\5>\r\2\f=\f2\v4\f\3\0009\r\26\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vq\nB\a\3\0016\a\30\0009\a\31\a9\tL\0065\nu\0005\vs\0003\fr\0=\f#\v5\ft\0009\r$\5>\r\2\f=\f2\v4\f\3\0009\r\16\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vv\nB\a\3\0016\a\30\0009\a\31\a9\tw\0065\nz\0005\vx\0005\fy\0009\r$\5>\r\2\f=\f2\v4\f\3\0009\r\26\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\vm\nB\a\3\0016\a\30\0009\a\31\a9\tw\0065\n|\0005\v{\0009\f:\3=\f0\v4\f\3\0009\r\26\5>\r\1\f9\r$\5>\r\2\f=\f%\v=\v}\nB\a\3\0012\0\0�K\0\1\0K\0\1\0\14SFileName\1\0\0\1\0\1\rprovider\14SFileName\1\0\0\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\17FileTypeName\20short_line_left\nSpace\1\0\0\1\2\0\0\tNONE\1\0\1\14separator\6 \0\15FileEncode\1\0\0\1\2\0\0\tNONE\1\0\2\rprovider\15FileEncode\14separator\6 \15BufferType\1\0\0\1\2\0\0\tNONE\1\0\2\rprovider\17FileTypeName\14separator\6 \fTabstop\1\0\0\1\2\0\0\tNONE\1\0\1\14separator\6 \0\fPerCent\1\0\0\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\16LinePercent\rLineInfo\1\0\0\1\2\0\0\tNONE\1\0\2\14separator\a  \rprovider\15LineColumn\18ShowLspClient\1\0\0\0\1\0\2\rprovider\17GetLspClient\ticon\n  \19DiagnosticInfo\1\0\0\1\0\2\ticon\n  \rprovider\19DiagnosticInfo\19DiagnosticHint\1\0\0\1\0\2\ticon\n  \rprovider\19DiagnosticHint\19DiagnosticWarn\1\0\0\1\0\2\ticon\n  \rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\1\0\2\ticon\n  \rprovider\20DiagnosticError\nright\15DiffRemove\1\0\0\1\0\2\rprovider\15DiffRemove\ticon\n  \17DiffModified\1\0\0\1\0\2\rprovider\17DiffModified\ticon\t 柳\fDiffAdd\1\0\0\18hide_in_width\1\0\2\rprovider\fDiffAdd\ticon\n  \rFileName\1\0\0\1\0\1\rprovider\rFileName\rFileIcon\1\0\0\24get_file_icon_color!galaxyline.provider_fileinfo\21buffer_not_empty\1\0\1\rprovider\rFileIcon\14GitBranch\1\0\0\1\2\0\0\tNONE\1\0\2\rprovider\14GitBranch\14separator\6 \fGitIcon\1\0\0\24separator_highlight\1\2\0\0\tNONE\14condition\24check_git_workspace\1\0\1\14separator\6 \0\ats\14getbufvar\afn\bvim\nprint\vViMode\1\0\0\14highlight\abg\rprovider\1\0\0\0\tleft\vinsert\ntable\1\5\0\0\rNvimTree\nvista\tdbui\vpacker\20short_line_list\fsection\tgrey\nblack\14error_red\bred\15light_blue\15vivid_blue\tblue\fmagenta\vpurple\18string_orange\vorange\16light_green\ngreen\tcyan\16info_yellow\16dark_yellow\vyellow\14bg_yellow\15section_bg\bbg0\afg\1\0\3\rfg_focus\f#f8f8f2\16bg_inactive\f#282a36\abg\f#282a36\1\0\25\tbg_d\f#141b24\bbg1\f#21283b\fbg_blue\f#54b0fd\bbg0\f#1a212e\vyellow\f#efbd5d\nblack\f#0c0e15\tgrey\f#455574\14diff_text\f#1c4a6e\rdark_red\f#992525\16diff_change\f#102b40\16dark_purple\f#862aa1\16diff_delete\f#331c1e\rdiff_add\f#27341c\tblue\f#41a7fc\16dark_yellow\f#8f610d\vorange\f#dd9046\14dark_cyan\f#1b6a73\ngreen\f#8bcd5b\vpurple\f#c75ae8\afg\f#93a4c3\14bg_yellow\f#f2cc81\bred\f#f65866\tcyan\f#34bfd0\bbg3\f#2a324a\bbg2\f#283347\25galaxyline.condition\15galaxyline\frequire\npcall\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n�\4\0\0\b\0\25\0#6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0006\2\3\0009\2\4\2)\3\1\0=\3\5\2)\3\1\0=\3\6\0029\3\a\0015\5\b\0005\6\t\0=\6\n\0055\6\v\0005\a\f\0=\a\r\6=\6\14\0055\6\15\0004\a\0\0=\a\16\6=\6\17\0055\6\18\0004\a\0\0=\a\19\6=\6\20\0055\6\22\0005\a\21\0=\a\23\6=\6\24\5B\3\2\1K\0\1\0\ffilters\vcustom\1\0\0\1\4\0\0\t.git\17node_modules\v.cache\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\2\16diagnostics\nicons\1\0\4\nerror\b\tinfo\b\thint\b\fwarning\b\1\0\1\venable\2\23ignore_ft_on_setup\1\3\0\0\rstartify\14dashboard\1\0\3\15update_cwd\2\15auto_close\1\18open_on_setup\2\nsetup%nvim_tree_highlight_opened_files\27nvim_tree_quit_on_open\6g\bvim\14nvim-tree\frequire\npcall\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
require("config/autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n�\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20�6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2:\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\19UltiSnips#Anon\afn\bvim�\1\0\1\3\2\6\0\21-\1\0\0009\1\0\1B\1\1\2\14\0\1\0X\1\15�6\1\1\0009\1\2\0019\1\3\1\6\1\4\0X\1\b�-\1\1\0B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\5\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\1�\2�\rcomplete\vprompt\fbuftype\abo\bvim\21select_next_item�\1\0\1\3\2\6\0\21-\1\0\0009\1\0\1B\1\1\2\14\0\1\0X\1\15�6\1\1\0009\1\2\0019\1\3\1\6\1\4\0X\1\b�-\1\1\0B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\5\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\1�\2�\rcomplete\vprompt\fbuftype\abo\bvim\21select_prev_item�\4\1\0\f\0%\0<6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0004�3\2\3\0006\3\1\0'\5\4\0B\3\2\0029\4\5\0015\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\17\0009\b\v\0019\b\f\b5\n\r\0009\v\14\0019\v\15\v=\v\16\nB\b\2\2=\b\18\a3\b\19\0=\b\20\a3\b\21\0=\b\22\a9\b\v\0019\b\23\bB\b\1\2=\b\24\a=\a\v\0064\a\b\0005\b\25\0>\b\1\a5\b\26\0>\b\2\a5\b\27\0>\b\3\a5\b\28\0>\b\4\a5\b\29\0>\b\5\a5\b\30\0>\b\6\a5\b\31\0>\b\a\a=\a \0065\a\"\0009\b!\3B\b\1\2=\b#\a=\a$\6B\4\2\0012\0\0�K\0\1\0K\0\1\0\15formatting\vformat\1\0\0\15cmp_format\fsources\1\0\1\tname\nemoji\1\0\1\tname\vbuffer\1\0\1\tname\tcalc\1\0\1\tname\14ultisnips\1\0\1\tname\nvsnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\14<C-Space>\rcomplete\f<S-Tab>\0\n<Tab>\0\t<CR>\1\0\0\rbehavior\vInsert\20ConfirmBehavior\1\0\1\vselect\1\fconfirm\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\flspkind\0\bcmp\frequire\npcall\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\n�\1\0\1\6\0\v\0\0174\1\0\0009\2\0\0\a\2\1\0X\2\b�5\2\b\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\a\3=\3\t\2=\2\2\1\18\4\0\0009\2\n\0\18\5\1\0B\2\3\1K\0\1\0\nsetup\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\rsettings\16sumneko_lua\tname�\1\1\0\5\0\a\0\0156\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0\a�9\2\3\0015\4\4\0B\2\2\0019\2\5\0013\4\6\0B\2\2\1K\0\1\0K\0\1\0\0\20on_server_ready\1\0\1\21install_root_dir\29/development/lsp_servers\rsettings\23nvim-lsp-installer\frequire\npcall\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\2\n�\r\0\0\4\0\30\0%6\0\0\0009\0\1\0'\1\3\0=\1\2\0'\1\5\0=\1\4\0)\1\1\0=\1\6\0005\1\v\0005\2\t\0005\3\b\0=\3\n\2=\2\f\0015\2\14\0005\3\r\0=\3\n\2=\2\15\0015\2\17\0005\3\16\0=\3\n\2=\2\18\0015\2\20\0005\3\19\0=\3\n\2=\2\21\0015\2\23\0005\3\22\0=\3\n\2=\2\24\0015\2\26\0005\3\25\0=\3\n\2=\2\27\1=\1\a\0005\1\29\0=\1\28\0K\0\1\0\1\v\0\0\5\5\5�\1 ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗�\1 ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║�\1 ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║�\1 ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║�\1 ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║�\1 ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝\5\28dashboard_custom_header\rnew_file\1\0\1\fcommand\23new | wincmd j | q\1\2\0\0005  New file                            SPC x x\23change_colorscheme\1\0\1\fcommand\vColors\1\2\0\0005  Change colorscheme                  SPC x x\16open_config\1\0\1\fcommand;new | wincmd j | q | cd ~/.config/nvim/ | e ./init.lua\1\2\0\0005  Open Config                         SPC x x\14find_word\1\0\1\fcommand\aAg\1\2\0\0005  Find  word                          SPC f s\17find_history\1\0\1\fcommand\fHistory\1\2\0\0005  Recently opened files               SPC x x\15find_files\1\0\0\16description\1\0\1\fcommand\nFiles\1\2\0\0006  Find files                          SPC p s \29dashboard_custom_section!dashboard_disable_statusline\n🐬 \26dashboard_footer_icon\bfzf dashboard_default_executive\6g\bvim\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\6\0\t\0\0156\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\4B\2\2\1K\0\1\0\20buftype_exclude\1\2\0\0\rterminal\21filetype_exclude\1\v\0\0\thelp\rterminal\14dashboard\rstartify\rNvimTree\rmarkdown\ttext\vpacker\18lsp-installer\5\1\0\3\28show_first_indent_level\3\0#show_trailing_blankline_indent\3\0\tchar\b▏\nsetup\21indent_blankline\frequire\npcall\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\ng\0\0\5\0\a\0\f6\0\0\0009\0\1\0009\0\2\0'\2\3\0006\3\0\0009\3\1\0039\3\4\3B\3\1\2'\4\5\0&\3\4\3'\4\6\0D\0\4\0\tfile\6/\vgetcwd\25Path to executable: \ninput\afn\bvimg\0\0\5\0\a\0\f6\0\0\0009\0\1\0009\0\2\0'\2\3\0006\3\0\0009\3\1\0039\3\4\3B\3\1\2'\4\5\0&\3\4\3'\4\6\0D\0\4\0\tfile\6/\vgetcwd\25Path to executable: \ninput\afn\bvim�\a\1\0\6\0\26\00016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0)�9\2\3\0015\3\5\0=\3\4\0029\2\6\0014\3\3\0005\4\b\0003\5\t\0=\5\n\4>\4\1\0035\4\v\0003\5\f\0=\5\n\4>\4\2\3=\3\a\0029\2\3\0015\3\14\0005\4\15\0=\4\16\3=\3\r\0029\2\6\0014\3\3\0005\4\17\0>\4\1\3=\3\r\0029\2\6\0019\3\6\0019\3\a\3=\3\18\0026\2\19\0009\2\20\0029\2\21\2'\4\22\0005\5\23\0B\2\3\0016\2\19\0009\2\20\0029\2\21\2'\4\24\0005\5\25\0B\2\3\1K\0\1\0K\0\1\0\1\0\4\vtexthl\5\vlinehl\5\nnumhl\5\ttext\b\15DapStopped\1\0\4\vtexthl\5\vlinehl\5\nnumhl\5\ttext\t🔴\18DapBreakpoint\16sign_define\afn\bvim\6c\1\0\a\16dartSdkPath-/development/flutter/bin/cache/dart-sdk/\ttype\tdart\frequest\vlaunch\tname\19Launch flutter\fprogram%${workspaceFolder}/lib/main.dart\bcwd\23${workspaceFolder}\19flutterSdkPath\25/development/flutter\targs\1\3\0\0-/development/Dart-Code/out/dist/debug.js\fflutter\1\0\2\ttype\15executable\fcommand\tnode\tdart\0\1\0\a\frequest\vlaunch\ttype\vcppdbg\vMIMode\bgdb\tname\30Attach to gdbserver :1234\28miDebuggerServerAddress\19localhost:1234\bcwd\23${workspaceFolder}\19miDebuggerPath\17/usr/bin/gdb\fprogram\0\1\0\5\frequest\vlaunch\ttype\vcppdbg\tname\16Launch file\16stopOnEntry\2\bcwd\23${workspaceFolder}\bcpp\19configurations\1\0\2\ttype\15executable\fcommand?/development/cpptools/extension/debugAdapters/OpenDebugAD7\vcppdbg\radapters\bdap\frequire\npcall\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\n�\4\0\0\4\0\v\0\0256\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\t\0005\3\n\0B\0\3\1K\0\1\0\1\0\3\vtexthl\"LspDiagnosticsSignInformation\nnumhl\"LspDiagnosticsSignInformation\ttext\b\"LspDiagnosticsSignInformation\1\0\3\vtexthl\27LspDiagnosticsSignHint\nnumhl\27LspDiagnosticsSignHint\ttext\b\27LspDiagnosticsSignHint\1\0\3\vtexthl\30LspDiagnosticsSignWarning\nnumhl\30LspDiagnosticsSignWarning\ttext\b\30LspDiagnosticsSignWarning\1\0\3\vtexthl\28LspDiagnosticsSignError\nnumhl\28LspDiagnosticsSignError\ttext\b\28LspDiagnosticsSignError\16sign_define\afn\bvim\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ndapui\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n\\\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\nicons\1\0\0\1\0\1\14separator\a->\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n�\5\0\0\a\0\v\0\0176\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\t\0005\5\5\0005\6\4\0=\6\6\0055\6\a\0=\6\b\5=\5\n\4B\2\2\1K\0\1\0\fkeymaps\1\0\0\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\0\b\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17n <leader>gs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\nsetup\rgitsigns\frequire\npcall\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TestNearest lua require("packer.load")({'vim-test'}, { cmd = "TestNearest", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TestSuite lua require("packer.load")({'vim-test'}, { cmd = "TestSuite", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TestVisit lua require("packer.load")({'vim-test'}, { cmd = "TestVisit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Git lua require("packer.load")({'vim-fugitive'}, { cmd = "Git", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file GV lua require("packer.load")({'vim-fugitive'}, { cmd = "GV", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TestFile lua require("packer.load")({'vim-test'}, { cmd = "TestFile", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TestLast lua require("packer.load")({'vim-test'}, { cmd = "TestLast", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType python ++once lua require("packer.load")({'black'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType dart ++once lua require("packer.load")({'awesome-flutter-snippets', 'dart-vim-plugin', 'flutter-tools.nvim'}, { ft = "dart" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'cmp-emoji'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'vim-react-snippets'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'vim-react-snippets'}, { ft = "typescript" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufWritePre * ++once lua require("packer.load")({'formatter.nvim'}, { event = "BufWritePre *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'hop.nvim'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/sino/.local/share/nvim/site/pack/packer/opt/dart-vim-plugin/ftdetect/dart.vim]], true)
vim.cmd [[source /Users/sino/.local/share/nvim/site/pack/packer/opt/dart-vim-plugin/ftdetect/dart.vim]]
time([[Sourcing ftdetect script at: /Users/sino/.local/share/nvim/site/pack/packer/opt/dart-vim-plugin/ftdetect/dart.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
