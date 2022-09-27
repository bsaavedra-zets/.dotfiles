-- vim.notify = require("notify")
vim.notify = require("notify").setup {
  stages = 'fade_in_slide_out',
  background_colour = 'floatshadow',
  timeout = 3000,
}

