local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    blade = { "pint" },
    php = { "pint" },
  },
  formatters = {
    stylua = {
      prepend_args = {
        "--call-parentheses", "NoSingleTable",
        "--column-width", "100",
        "--indent-type", "Spaces",
        "--indent-width", "2",
        "--quote-style", "ForceDouble",
      }
    }
  }
}

return options
