return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = "latte",
          dark = "mocha",
        },
        transparent_background = false, -- disables setting the background color.
        show_end_of_buffer = true, -- shows the '~' characters after the end of buffers
        term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
          enabled = false, -- dims the background color of inactive window
          shade = "dark",
          percentage = 0.15, -- percentage of the shade to apply to the inactive window
        },
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        no_underline = false, -- Force no underline
        styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = { "bold" }, -- Change the style of comments
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        color_overrides = {
          latte = {},
          frappe = {},
          macchiato = {},
          mocha = {},
        },
        custom_highlights = {},
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
          -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
      })

      vim.cmd([[colorscheme catppuccin]])
    end,
  },
  --  {
  --    "folke/tokyonight.nvim",
  --    priority = 1000, -- make sure to load this before all the other start plugins
  --    config = function()
  --      local bg = "#010228"
  --      local bg_dark = "#010220"
  --      local bg_highlight = "#250349"
  --      local bg_search = "#B75BFF"
  --      local bg_visual = "#5208a1"
  --      local fg = "#CBE0F0"
  --      local fg_dark = "#B4D0E9"
  --      local fg_gutter = "#627E97"
  --      local border = "#8C2EFF"
  --
  --      require("tokyonight").setup({
  --        style = "night",
  --        on_colors = function(colors)
  --          colors.bg = bg
  --          colors.bg_dark = bg_dark
  --          colors.bg_float = bg_dark
  --          colors.bg_highlight = bg_highlight
  --          colors.bg_popup = bg_dark
  --          colors.bg_search = bg_search
  --          colors.bg_sidebar = bg_dark
  --          colors.bg_statusline = bg_dark
  --          colors.bg_visual = bg_visual
  --          colors.border = border
  --          colors.fg = fg
  --          colors.fg_dark = fg_dark
  --          colors.fg_float = fg
  --          colors.fg_gutter = fg_gutter
  --          colors.fg_sidebar = fg_dark
  --        end,
  --        on_highlights = function(hl, c)
  --          hl.TelescopeBorder = {
  --            bg = c.bg,
  --            fg = c.border,
  --          }
  --          hl.TelescopeNormal = {
  --            bg = c.bg,
  --            fg = c.fg_dark,
  --          }
  --        end,
  --      })
  --
  --      vim.cmd([[colorscheme tokyonight]])
  --    end,
  --  },
}