require("telescope").setup {
  defaults = {
    file_ignore_patterns = {
      ".git",
      ".next",
      "amplify",
      "node_modules",
      "out",
      "public",
      "yarn.lock"
    }
  }
}

local builtin  = require("telescope.builtin")
