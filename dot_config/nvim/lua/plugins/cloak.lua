return {
  "laytan/cloak.nvim",
  event = "VeryLazy",
  opts = {
    enabled = true,
    cloak_character = "*",
    patterns = {
      {
        file_pattern = { ".env*", ".env.*", "*.env" },
        cloak_pattern = "=.+",
      },
    },
  },
}
