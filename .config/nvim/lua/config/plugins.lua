vim.pack.add {
    'https://github.com/nvim-mini/mini.nvim',
    'https://github.com/saghen/blink.lib',
    'https://github.com/saghen/blink.cmp',
    'https://github.com/nvim-lua/plenary.nvim',
    'https://github.com/nvim-telescope/telescope.nvim',
    'https://github.com/mason-org/mason.nvim',
    'https://github.com/mason-org/mason-lspconfig.nvim',
    'https://github.com/stevearc/oil.nvim',
    'https://github.com/nvim-treesitter/nvim-treesitter',
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/brenoprata10/nvim-highlight-colors',
    'https://github.com/nvim-lualine/lualine.nvim',
    'https://github.com/jiaoshijie/undotree',
}

-- mini
require("mini.align").setup()
require("mini.move").setup()
require("mini.pairs").setup()
require("mini.surround").setup()
require("mini.extra").setup()
require("mini.pick").setup()
require("mini.icons").setup()

-- blink
require("blink.cmp").setup()

-- telescope
require("telescope").setup({
    defaults = {
        layout_strategy = "horizontal",
        layout_config = {
            preview_width = 0.40,
        },
        sorting_strategy = "ascending",
    },
})

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {
    desc = "Find files"
})

vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
  desc = "Live grep",
})

vim.keymap.set("n", "<leader>fb", builtin.buffers, {
  desc = "Find buffers",
})

vim.keymap.set("n", "<leader>fh", builtin.help_tags, {
  desc = "Help tags",
})

-- oil
require("oil").setup({ default_file_explorer = true,
  columns = {},
  keymaps = {
    ["q"] = "actions.close",
  },
  delete_to_trash = true,
  view_options = {
    show_hidden = true,
  },
  skip_confirm_for_simple_edits = true,
})
vim.keymap.set("n", "<leader>fm", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- treesitter
require("nvim-treesitter").setup({
    install_dir = vim.fn.stdpath("data") .. "/site",
})

require("nvim-treesitter").install({
    "c",
    "cpp",
}):wait(300000)

-- mason
require("mason").setup({
  opts = {
    ui = {
      icons = {
        package_installed   = "*",
        package_pending     = ">",
        package_uninstalled = "x"
      }
    }
  }
})

--highlights
require('nvim-highlight-colors').setup({})

-- lualine
require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'auto',
  }
}
