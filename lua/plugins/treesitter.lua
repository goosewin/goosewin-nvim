return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Ensure ensure_installed exists
      opts.ensure_installed = opts.ensure_installed or {}
      
      -- Add missing parsers for Snacks.image support
      vim.list_extend(opts.ensure_installed, {
        "css",
        "latex",
        "norg", -- Provided by neorg plugin
        "scss",
        "typst",
        "vue",
      })
      
      return opts
    end,
  },
}
