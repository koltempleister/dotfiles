return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
  {
    "neanias/everforest-nvim",
    lazy = false,
    priority = 1000,
    opts = {
      background = "medium", -- Opties: "soft", "medium", "hard"
      transparent_background_level = 0,
      italics = false,
    },
    config = function()
      require("everforest").setup({
        -- Je aangepaste opties hier
      })
      -- Laad het thema expliciet om conflicten met lazy.nvim te voorkomen
      vim.cmd("colorscheme everforest")
    end,
  },
}
