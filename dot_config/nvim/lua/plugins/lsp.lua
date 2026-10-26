return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {
          settings = {
            intelephense = {
              format = {
                braces = "k&r", -- Options: "k&r" (K&R), "stroustrup", "allman", or "none"
              },
            },
          },
        },
      },
    },
  },
}
