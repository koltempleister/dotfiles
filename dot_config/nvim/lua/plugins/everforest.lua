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
    config = function()
      require("everforest").setup({
        -- Je aangepaste opties hier
        background = "hard", -- Opties: "soft", "medium", "hard"
        transparent_background_level = 1,
        italics = false,
      })
      -- Laad het thema expliciet om conflicten met lazy.nvim te voorkomen
      vim.cmd("colorscheme everforest")
    end,
  },
}
