return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "bash-language-server",

        "lua-language-server",
        "stylua",

        "html-lsp",
        "css-lsp",
        "tailwindcss-language-server",
        "json-lsp",

        "typescript-language-server",
        "eslint-lsp",
        "prettier",

        "pyright",

        "erlang-ls",
        "elixir-ls",

        "clangd",
        "cmake-language-server",

        "rust-analyzer",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",

        "lua",
        "vim",
        "vimdoc",

        "html",
        "css",
        "json",
        "javascript",
        "typescript",
        "tsx",
        "graphql",

        "python",

        "erlang",
        "elixir",
        "gleam",

        "c",

        "rust",
        "toml",
      },
    },
  },

  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration
      "nvim-telescope/telescope.nvim", -- optional
    },
    config = true,
    lazy = false,
  },
}
