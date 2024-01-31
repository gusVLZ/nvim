local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
    vim.notify("nvim_tree not working")
    return
end

local api = require("nvim-tree.api")

--local function edit_or_open()
--  local node = api.tree.get_node_under_cursor()
--
--  if node.nodes ~= nil then
--    -- expand or collapse folder
--    api.node.open.edit()
--  else
--    -- open file
--    api.node.open.edit()
--    -- Close the tree if file was opened
--    api.tree.close()
--  end
--end
--
---- open as vsplit on current node
--local function vsplit_preview()
--  local node = api.tree.get_node_under_cursor()
--
--  if node.nodes ~= nil then
--    -- expand or collapse folder
--    api.node.open.edit()
--  else
--    -- open file as vsplit
--    api.node.open.vertical()
--  end
--
--  -- Finally refocus on tree if it was lost
--  api.tree.focus()
--end
--
--
--vim.api.nvim_set_keymap("n", "<C-h>", ":NvimTreeToggle<cr>", {silent = true, noremap = true})
--
---- on_attach
--vim.keymap.set("n", "l", edit_or_open,          opts)
--vim.keymap.set("n", "L", vsplit_preview,        opts)
--vim.keymap.set("n", "h", api.tree.close,        opts)
--vim.keymap.set("n", "H", api.tree.collapse_all, opts)

nvim_tree.setup {
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  renderer = {
    root_folder_modifier = ":t",
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  view = {
    width = 30,
    side = "left"
  },
}
