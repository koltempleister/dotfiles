return {
  "carlos-rodrigo/claude-code.nvim",
  keys = {
    { "clc", "ClaudeCodeToggle", desc = "claude: toggle" },
    { "cln", "ClaudeCodeNew", desc = "claude: new session" },
    { "cls", "ClaudeCodeSend", desc = "claude: send selection", mode = "v" },
  },
  config = function()
    require("claude-code").setup({
      claude_code_cmd = "claude",
      window = { type = "current", position = "right", size = 80 },
      auto_scroll = true,
      save_session = true,
    })
  end,
}
