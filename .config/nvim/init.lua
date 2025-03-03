local path_package = vim.fn.stdpath('data') .. '/site'
local mini_path = path_package .. '/pack/deps/start/mini.nvim'
if not vim.loop.fs_stat(mini_path) then
  vim.cmd('echo "Installing `mini.nvim`" | redraw')
  local clone_cmd = {
    'git', 'clone', '--filter=blob:none',
    'https://github.com/echasnovski/mini.nvim', mini_path
  }
  vim.fn.system(clone_cmd)
  vim.cmd('packadd mini.nvim | helptags ALL')
end

require('mini.deps').setup({ path = { package = path_package } })

local plugins = {
  'echasnovski/mini.starter',
  'echasnovski/mini.statusline',
  'echasnovski/mini.trailspace',
  'echasnovski/mini.map',
  'echasnovski/mini-git',
  'echasnovski/mini.icons',
  'echasnovski/mini.completion',
  'echasnovski/mini.starter',
  'echasnovski/mini.indentscope',
  'sidebar-nvim/sidebar.nvim',
  'Mofiqul/dracula.nvim',
  'rmagatti/auto-session'
}

for key,val in ipairs(plugins) do
  MiniDeps.add({
    source = val
  })
end

require('mini.starter').setup()
require('mini.statusline').setup()
require('mini.trailspace').setup()
require('mini.map').setup()
require('mini.git').setup()
require('mini.icons').setup()
require('mini.completion').setup()
require('mini.indentscope').setup({
  symbol = "|"
})
require('sidebar-nvim').setup({
  open = true,
  side = "left",
  files = {
    icon = "",
    show_hidden = true,
    ignored_paths = {"%.git$"}
  },
  sections = { "files" },
  section_separator = {"", "-----", ""}
})
require('auto-session').setup()
vim.cmd[[colorscheme dracula-soft]]
vim.cmd[[set number]]
