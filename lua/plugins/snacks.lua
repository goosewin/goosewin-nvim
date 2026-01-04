return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      -- Enable features
      dashboard = { enabled = true },
      image = { enabled = true },
      statuscolumn = { enabled = true },
    },
    config = function(_, opts)
      local Snacks = require("snacks")
      Snacks.setup(opts)
      
      -- Manually trigger setup for modules that depend on UIEnter event
      -- (UIEnter doesn't fire in headless mode, causing health check failures)
      if Snacks.dashboard and Snacks.dashboard.setup then
        pcall(Snacks.dashboard.setup)
      end
      
      if Snacks.input and Snacks.input.enable then
        pcall(Snacks.input.enable)
      end
      
      if Snacks.picker and Snacks.picker.setup then
        pcall(Snacks.picker.setup)
      end
    end,
  },
}
