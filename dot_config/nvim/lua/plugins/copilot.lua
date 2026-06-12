return {
  "zbirenbaum/copilot.lua",
  ---@type copilot.Config
  opts = {
    filetypes = {
      -- Schakel Copilot uit voor .env bestanden
      sh = function()
        if vim.fn.expand("%:t"):match("^%.env") then
          return false
        end
        return true
      end,
      -- Zorg dat .env ook niet als 'sh' of 'plaintext' wordt herkend als je andere regels gebruikt
      ["sh"] = true,
    },
  },
}
