return {
  "pablopunk/pi.nvim",
  config = function()
    require("pi").setup({
      provider = "ollama",
      model = "qwen2.5-coder:14b", -- use `pi --list-models` to see your available models
    })
  end,
}
