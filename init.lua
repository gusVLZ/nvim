vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
--if not vim.loop.fs_stat(lazypath) then
--    vim.fn.system{
--        'git',
--        'clone',
--        '--filter=blob:none',
--        'https://github.com/folke/lazy.nvim.git',
--        '--branch=stable',
--        lazypath
--    }
--end
vim.opt.rtp:prepend(lazypath)

require("gusvlz.plugins")
require("gusvlz.configs")
require("gusvlz.keymaps")
require("gusvlz.which-key")
require("gusvlz.treesitter")
require("gusvlz.telescope")
require("gusvlz.lsp")
require("gusvlz.cmp")
require("gusvlz.flit")
require("gusvlz.illuminate")
require("gusvlz.tree")
require("gusvlz.toggleterm")
require("gusvlz.alpha")
require("gusvlz.project")
