return {
  "nvim-neotest/neotest",
  dependencies = {
    "olimorris/neotest-phpunit",
    -- Optional: For Pest tests
    -- "V13Axel/neotest-pest",
  },
  opts = {
    adapters = {
      ["neotest-phpunit"] = {
        phpunit_cmd = function()
          return vim.fn.expand("~/.local/bin/ddev-phpunit")
        end,
        root_ignore_files = { "tests/Pest.php" },
      },
    },
  },
}
