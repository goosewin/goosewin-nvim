return {
  {
    "sudo-tee/opencode.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim", -- or fzf-lua
    },
    config = function()
      require("opencode").setup({
        -- OpenCode binary path (usually auto-detected)
        opencode_path = "opencode",
        -- UI settings
        ui = {
          width = 0.8,
          height = 0.8,
          border = "rounded",
        },
        -- Completion settings
        completion = {
          file_sources = {
            enabled = true,
          },
        },
      })
    end,
    keys = {
      { "<leader>oo", "<cmd>OpenCode<cr>", desc = "Open OpenCode" },
      { "<leader>ot", "<cmd>OpenCodeToggle<cr>", desc = "Toggle OpenCode" },
      { "<leader>os", "<cmd>OpenCodeSend<cr>", desc = "Send to OpenCode", mode = { "n", "v" } },
    },
  },
}
