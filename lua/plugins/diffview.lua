return {
  "sindrets/diffview.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles", "DiffviewFileHistory" },
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "DiffView Open" },
    { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "DiffView File History" },
    { "<leader>gH", "<cmd>DiffviewFileHistory<cr>", desc = "DiffView All History" },
    { "<leader>gc", "<cmd>DiffviewClose<cr>", desc = "DiffView Close" },
  },
  opts = {
    enhanced_diff_hl = true, -- See ':h diffview-config-enhanced_diff_hl'
    view = {
      -- Configure the layout and behavior of different types of views
      default = {
        layout = "diff2_horizontal",
      },
      merge_tool = {
        layout = "diff3_horizontal",
        disable_diagnostics = true,
      },
    },
    file_panel = {
      listing_style = "tree", -- One of 'list' or 'tree'
      tree_options = {
        flatten_dirs = true,
        folder_statuses = "only_folded",
      },
      win_config = {
        position = "left",
        width = 35,
      },
    },
    keymaps = {
      view = {
        { "n", "<tab>", "<cmd>lua require('diffview.actions').select_next_entry()<cr>", { desc = "Next file" } },
        { "n", "<s-tab>", "<cmd>lua require('diffview.actions').select_prev_entry()<cr>", { desc = "Previous file" } },
        { "n", "gf", "<cmd>lua require('diffview.actions').goto_file()<cr>", { desc = "Go to file" } },
        { "n", "<C-w><C-f>", "<cmd>lua require('diffview.actions').goto_file_split()<cr>", { desc = "Go to file (split)" } },
        { "n", "<C-w>gf", "<cmd>lua require('diffview.actions').goto_file_tab()<cr>", { desc = "Go to file (tab)" } },
        { "n", "<leader>df", "<cmd>lua require('diffview.actions').focus_files()<cr>", { desc = "Focus files panel" } },
        { "n", "<leader>dt", "<cmd>lua require('diffview.actions').toggle_files()<cr>", { desc = "Toggle files panel" } },
      },
      file_panel = {
        { "n", "j", "<cmd>lua require('diffview.actions').next_entry()<cr>", { desc = "Next entry" } },
        { "n", "k", "<cmd>lua require('diffview.actions').prev_entry()<cr>", { desc = "Previous entry" } },
        { "n", "<cr>", "<cmd>lua require('diffview.actions').select_entry()<cr>", { desc = "Select entry" } },
        { "n", "-", "<cmd>lua require('diffview.actions').toggle_stage_entry()<cr>", { desc = "Stage/unstage entry" } },
        { "n", "S", "<cmd>lua require('diffview.actions').stage_all()<cr>", { desc = "Stage all" } },
        { "n", "U", "<cmd>lua require('diffview.actions').unstage_all()<cr>", { desc = "Unstage all" } },
        { "n", "X", "<cmd>lua require('diffview.actions').restore_entry()<cr>", { desc = "Restore entry" } },
        { "n", "R", "<cmd>lua require('diffview.actions').refresh_files()<cr>", { desc = "Refresh files" } },
        { "n", "<tab>", "<cmd>lua require('diffview.actions').select_next_entry()<cr>", { desc = "Next entry" } },
        { "n", "<s-tab>", "<cmd>lua require('diffview.actions').select_prev_entry()<cr>", { desc = "Previous entry" } },
        { "n", "gf", "<cmd>lua require('diffview.actions').goto_file()<cr>", { desc = "Go to file" } },
        { "n", "<C-w><C-f>", "<cmd>lua require('diffview.actions').goto_file_split()<cr>", { desc = "Go to file (split)" } },
        { "n", "<C-w>gf", "<cmd>lua require('diffview.actions').goto_file_tab()<cr>", { desc = "Go to file (tab)" } },
        { "n", "i", "<cmd>lua require('diffview.actions').listing_style()<cr>", { desc = "Toggle list/tree view" } },
        { "n", "f", "<cmd>lua require('diffview.actions').toggle_flatten_dirs()<cr>", { desc = "Toggle flatten dirs" } },
        { "n", "<leader>df", "<cmd>lua require('diffview.actions').focus_files()<cr>", { desc = "Focus files panel" } },
        { "n", "<leader>dt", "<cmd>lua require('diffview.actions').toggle_files()<cr>", { desc = "Toggle files panel" } },
      },
      file_history_panel = {
        { "n", "g!", "<cmd>lua require('diffview.actions').options()<cr>", { desc = "Open options" } },
        { "n", "<C-A-d>", "<cmd>lua require('diffview.actions').open_in_diffview()<cr>", { desc = "Open in diffview" } },
        { "n", "y", "<cmd>lua require('diffview.actions').copy_hash()<cr>", { desc = "Copy commit hash" } },
        { "n", "zR", "<cmd>lua require('diffview.actions').open_all_folds()<cr>", { desc = "Open all folds" } },
        { "n", "zM", "<cmd>lua require('diffview.actions').close_all_folds()<cr>", { desc = "Close all folds" } },
        { "n", "j", "<cmd>lua require('diffview.actions').next_entry()<cr>", { desc = "Next entry" } },
        { "n", "k", "<cmd>lua require('diffview.actions').prev_entry()<cr>", { desc = "Previous entry" } },
        { "n", "<cr>", "<cmd>lua require('diffview.actions').select_entry()<cr>", { desc = "Select entry" } },
        { "n", "<tab>", "<cmd>lua require('diffview.actions').select_next_entry()<cr>", { desc = "Next entry" } },
        { "n", "<s-tab>", "<cmd>lua require('diffview.actions').select_prev_entry()<cr>", { desc = "Previous entry" } },
        { "n", "gf", "<cmd>lua require('diffview.actions').goto_file()<cr>", { desc = "Go to file" } },
        { "n", "<C-w><C-f>", "<cmd>lua require('diffview.actions').goto_file_split()<cr>", { desc = "Go to file (split)" } },
        { "n", "<C-w>gf", "<cmd>lua require('diffview.actions').goto_file_tab()<cr>", { desc = "Go to file (tab)" } },
        { "n", "<leader>df", "<cmd>lua require('diffview.actions').focus_files()<cr>", { desc = "Focus files panel" } },
        { "n", "<leader>dt", "<cmd>lua require('diffview.actions').toggle_files()<cr>", { desc = "Toggle files panel" } },
      },
    },
  },
}
