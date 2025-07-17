-- ~/.config/nvim/lua/plugins/telescope-override.lua
return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- This overrides the default find_files keymap
      {
        "<leader><leader>",
        function()
          require("telescope.builtin").find_files({
            hidden = true, -- Show hidden files
            find_command = {
              "rg",
              "--files",
              "--hidden",
              "--glob",
              "!**/.git/*",
              "--glob",
              "!**/*.png",
              "--glob",
              "!**/*.jpg",
              "--glob",
              "!**/*.jpeg",
              "--glob",
              "!**/*.gif",
              "--glob",
              "!**/*.svg",
              "--glob",
              "!**/*.webp",
            },
          })
        end,
        desc = "Find Files (incl. hidden)",
      },
    },
  },
}
