return {
  -- Disable snacks file explorer in favor of neo-tree
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        enabled = false,
      },
    },
  },

  -- Import neo-tree extra for full LazyVim integration
  { import = "lazyvim.plugins.extras.editor.neo-tree" },

  -- Customize neo-tree settings
  {
    "nvim-neo-tree/neo-tree.nvim",
    -- Disable auto-open when starting in a directory
    init = function() end,
    opts = {
      filesystem = {
        filtered_items = {
          visible = true, -- Show hidden files by default
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
    },
  },
}
