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
        on_highlights = function(hl, palette)
          -- Genegeerde bestanden (bv. vendor/) in de Snacks explorer beter leesbaar maken
          hl.SnacksPickerPathIgnored = { fg = palette.grey0 }
          hl.SnacksPickerGitStatusIgnored = { fg = palette.grey0 }
          -- Niet-geversioneerde (untracked) bestanden in de Snacks explorer lichter maken
          hl.SnacksPickerGitStatusUntracked = { fg = palette.grey1 }
          -- Inlay hints (parameternamen in functie-aanroepen) lichter maken
          hl.InlayHints = { fg = palette.grey1 }
          hl.LspInlayHint = { fg = palette.grey1 }
        end,
      })
      -- Laad het thema expliciet om conflicten met lazy.nvim te voorkomen
      vim.cmd("colorscheme everforest")
    end,
  },
}
