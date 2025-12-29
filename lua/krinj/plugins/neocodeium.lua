return {
  "monkoose/neocodeium",
  event = "VeryLazy",
  config = function()
    local neocodeium = require("neocodeium")

    neocodeium.setup({
      manual = false,
    })

    vim.api.nvim_create_autocmd("User", {
      pattern = "NeoCodeiumCompletionDisplayed",
      callback = function()
        require("cmp").abort()
      end,
    })

    vim.api.nvim_create_autocmd("User", {
      pattern = "NeoCodeiumLabelUpdated",
      -- Don't forget to add some `group`
      callback = function(ev)
        -- Use ev.data to update your statusline
        -- As example just print to cmdline
        vim.print(ev.data)
      end,
    })

    -- set up some sort of keymap to cycle and complete to trigger completion
    vim.keymap.set("i", "<S-a>", function()
      neocodeium.cycle_or_complete()
    end)
    -- make sure to have a mapping to accept a completion
    vim.keymap.set("i", "<S-F>", function()
      neocodeium.accept()
    end)
  end,
}
