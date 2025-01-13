return {
  {
    "nvim-tree/nvim-tree.lua",
    opts = function(_, opt)
      opt.renderer = opt.renderer or {}
      opt.renderer.root_folder_label = ":~:s?$?/"
      opt.renderer.full_name = true
      opt.renderer.decorators = {
        "Git",
        "Open",
        "Hidden",
        "Modified",
        "Bookmark",
        "Diagnostics",
        "Copied",
        "Cut",
      }

      return opt
    end,
  },
}
