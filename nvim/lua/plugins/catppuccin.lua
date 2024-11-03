return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,

  opts = {
    flavour = "mocha",
    transparent_background = true,
    highlight_overrides = {
      mocha = function(mocha)
        return {
          LineNr = { fg = mocha.text },
          NvimTreeNormal = { bg = mocha.none },
          CursorLine = { bg = mocha.crust },
        }
      end,
    },
  },
}
