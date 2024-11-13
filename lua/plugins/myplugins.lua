return {
  {
    "natecraddock/sessions.nvim",
    opts = {
      sessions_filepath = ".nvim-session",
    },
  },
  {
    "natecraddock/workspaces.nvim",
    opts = {
      hooks = {
        open_pre = {
          "SessionsSave",
          "silent %bdelete!",
        },
        open = {
          "SessionsLoad",
        },
      },
    },
    keys = {
      { "<leader>fw", "<cmd>Telescope workspaces<CR>", desc = "Open a workspace" },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      extensions = {
        workspaces = {},
      },
    },
  },
}
