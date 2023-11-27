return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    sections = {
      lualine_b = { "branch" },
      lualine_c = { "buffers" },
      lualine_x = { "diff", "diagnostics" },
      lualine_y = { "filetype" },
      lualine_z = { "location" },
    },
    options = {
      theme = "auto",
    },
  },
}
