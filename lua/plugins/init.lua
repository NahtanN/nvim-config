return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "prettier",
        "lua-language-server",
        "typescript-language-server",
      },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "configs.null-ls"
    end,
  },
  {
    "preservim/nerdcommenter", lazy = false
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-telescope/telescope.nvim", lazy = false,
    config = function ()
      require "configs.telescope"
    end
  },
  {
    "ThePrimeagen/harpoon", lazy = false,
    config = function ()
      require "configs.harpoon"
    end
  },
  {
    "mbbill/undotree", lazy = false,
    config = function ()
      require "configs.undotree"
    end
  },
  {
    "tpope/vim-fugitive", lazy = false,
    config = function ()
      require "configs.fugitive"
    end
  }
}
