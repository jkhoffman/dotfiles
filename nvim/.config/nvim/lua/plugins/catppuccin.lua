return {
  { -- further customize the options set by the community
    "catppuccin",
    opts = {
      integrations = {
        harpoon = true,
        indent_blankline = {
          enabled = true,
          scope_color = "lavender", -- catppuccin color (eg. `lavender`) Default: text
          colored_indent_levels = false,
        },
        neogit = true,
        treesitter_context = true,
        lsp_trouble = true,
      },
    },
  },
}
