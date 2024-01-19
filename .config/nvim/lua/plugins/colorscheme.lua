return {
  -- { "olimorris/onedarkpro.nvim", priority = 1000 },
  {
    "polirritmico/monokai-nightasty.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      dark_style_background = "transparent",
    },
  },
  -- {
  --   "scottmckendry/cyberdream.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("cyberdream").setup({
  --       -- Recommended - see "Configuring" below for more config options
  --       transparent = true,
  --       italic_comments = true,
  --       hide_fillchars = true,
  --       borderless_telescope = true,
  --     })
  --   end,
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai-nightasty",
      -- colorscheme = "onedark_vivid",
      -- colorscheme = "cyberdream",
    },
  },
}
