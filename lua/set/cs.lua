require("tokyonight").setup({
   style = "night", -- The theme comes in three styles, `storm`, `moon`
   transparent = false, -- Enable this to disable setting the backgroun
   terminal_colors = false, -- Configure the colors used when opening a
   styles = {
     -- Style to be applied to different syntax groups
     -- Value is any valid attr-list value for `:help nvim_set_hl`
     comments = { italic = true },
     keywords = { italic = true },
     functions = { bold = true},
     variables = {},
     -- Background styles. Can be "dark", "transparent" or "normal"
     sidebars = "dark", -- style for sidebars, see below
     floats = "dark", -- style for floating windows
   },
   dim_inactive = false, -- dims inactive windows
   lualine_bold = true, -- When `true`, section headers in the lualine
   on_colors = function(colors)
    colors.error = "#00ff00"
   end,
   on_highlights = function(highlights, colors) end,
})
