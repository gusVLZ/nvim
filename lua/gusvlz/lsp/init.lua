local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "gusvlz.lsp.mason"
require("gusvlz.lsp.handlers").setup()
require "gusvlz.lsp.null-ls"
