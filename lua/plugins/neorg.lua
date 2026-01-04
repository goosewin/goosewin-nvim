return {
  {
    "nvim-neorg/neorg",
    dependencies = { 
      "nvim-lua/plenary.nvim",
      "nvim-neorg/tree-sitter-norg",
    },
    ft = "norg", -- Only load when opening .norg files
    cmd = "Neorg", -- Or when running Neorg commands
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {},
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/notes",
              },
            },
          },
        },
      })
    end,
  },
  {
    "nvim-neorg/tree-sitter-norg",
    lazy = true, -- Parser is already manually compiled
  },
}
