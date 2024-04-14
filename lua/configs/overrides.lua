local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return {
      desc = "nvim-tree: " ..desc, buffer = bufnr, noremap = true, nowait = true
    }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set('n', 'h',
    function()
      api.tree.change_root_to_parent()
      api.node.navigate.parent_close()
    end, opts('Up'))
  vim.keymap.set('n', 'l',
    function()
      api.tree.change_root_to_node()
      api.node.navigate.sibling.first()
    end,
    opts('Down'))
end
local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    --extras
    "java-language-server",
  },
}
-- git support in nvimtree
M.nvimtree = {
  on_attach = my_on_attach,
  --update_focused_file = {
  --  enable = true,
  --  update_cwd = true,
  --},
  view = {
    number = true,
    relativenumber = true,
  },
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
