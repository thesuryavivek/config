return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    sections = {
      lualine_b = { "filename" },
      lualine_c = { "buffers" },
      lualine_x = { "branch", "diff", "diagnostics" },
      lualine_y = { "filetype" },
      lualine_z = { "location" },
    },
    options = {
      theme = "auto",
    },
  },
}
