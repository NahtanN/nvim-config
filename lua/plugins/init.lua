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
        "gopls",
        "js-debug-adapter",
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
  },
  {
    "github/copilot.vim", lazy = false
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      require("dapui").setup()

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },
  {
    "mfussenegger/nvim-dap", lazy = false,
    dependencies = {
      "rcarriga/nvim-dap-ui"
    },
    config = function ()
      require "configs.dap"
    end
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function (_, opts)
      require("dap-go").setup(opts)
    end
  },
  { "nvim-treesitter/nvim-treesitter-context", lazy = false }
}
