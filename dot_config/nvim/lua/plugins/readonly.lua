return {
  "bgaillard/readonly.nvim",
  opts = {
    pattern = {
      vim.fn.expand("~") .. "/.aws/config",
      vim.fn.expand("~") .. "/.aws/credentials",
      vim.fn.expand("~") .. "/.ssh/*",
      vim.fn.expand("~") .. "/.secrets.yaml",
      vim.fn.expand("~") .. "/.vault-crypt-files/*",
      vim.fn.expand("~") .. "/.config/composer/*",
      "**/.env.local",
    },
  },
  lazy = false,
}
