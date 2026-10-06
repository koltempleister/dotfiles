return {
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = { "php-debug-adapter" },
      handlers = {
        php = function(config)
          config.configurations = {
            {
              type = "php",
              request = "launch",
              name = "Listen for XDebug (DDEV)",
              port = 9003,
              log = true,
              pathMappings = {
                ["/var/www/html"] = vim.fn.getcwd() .. "/",
              },
              hostname = "0.0.0.0",
            },
          }
          require("mason-nvim-dap").default_setup(config)
        end,
      },
    },
  },
}
