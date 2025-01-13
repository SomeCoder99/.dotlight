return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opt)
      local cmp = require("cmp")
      local ls = require("luasnip")
      opt.mapping = {
        ["<c-dwon>"] = cmp.mapping.scroll_docs(4),
        ["<c-up>"] = cmp.mapping.scroll_docs(-4),
        ["<down>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Select },
        ["<up>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Select },
        ["<cr>"] = cmp.mapping.confirm { select = false },
        ["<c-space>"] = function()
          if cmp.visible() then
            cmp.close()
          else
            cmp.complete()
          end
        end,
        ["<c-d>"] = function()
          if cmp.visible_docs() then
            cmp.close_docs()
          else
            cmp.open_docs()
          end
        end,

        ["<tab>"] = cmp.mapping(function(f)
          if ls.jumpable(1) then
            ls.jump(1)
          else
            f()
          end
        end, { "i", "s" }),

        ["<s-tab>"] = cmp.mapping(function(f)
          if ls.jumpable(-1) then
            ls.jump(-1)
          else
            f()
          end
        end, { "i", "s" }),
      }
      vim.keymap.set("i", "<c-k>", ls.expand, { silent = true })
      return opt
    end,
  },
}
