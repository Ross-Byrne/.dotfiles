return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      mappings = {
        -- Copy path relative to cwd
        ["Y"] = {
          function(state)
            local node = state.tree:get_node()
            local path = node:get_id()
            local relative = vim.fn.fnamemodify(path, ":.")
            vim.fn.setreg("+", relative, "c")
          end,
          desc = "Copy Relative Path to Clipboard",
        },
        -- Copy absolute path (previous Y behavior)
        ["gy"] = {
          function(state)
            local node = state.tree:get_node()
            vim.fn.setreg("+", node:get_id(), "c")
          end,
          desc = "Copy Absolute Path to Clipboard",
        },
      },
    },
    filesystem = {
      filtered_items = {
        visible = false,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          ".git",
          ".DS_Store",
        },
        never_show = {},
      },
    },
  },
}
