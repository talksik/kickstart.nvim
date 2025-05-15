-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'github/copilot.vim',
  'f-person/git-blame.nvim',
  {
    'folke/zen-mode.nvim',
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    config = function()
      -- toggle zen mode on zz
      vim.api.nvim_set_keymap('n', '<leader>zz', '<cmd>ZenMode<CR>', { noremap = true, silent = true })
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'solarized',
        },
        sections = {
          lualine_a = {
            {
              'mode',
            },
          },
          lualine_b = {
            {
              'filename',
              path = 3,
            },
          },
          lualine_c = {
            {
              'diff',
            },
            {
              'diagnostics',
            },
          },
          -- lualine_x = {
          -- },
          -- lualine_y = {
          -- },
          lualine_z = {
            {
              'datetime',
              -- options: default, us, uk, iso, or your own format string ("%H:%M", etc..)
              style = '%H:%M:%S',
            },
            {
              'filesize',
            },
          },
        },
      }
    end,
  },

  -- lazygit
  {
    'kdheepak/lazygit.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      vim.keymap.set('n', '<leader>lg', function()
        vim.cmd 'LazyGit'
      end, {})
    end,
  },

  {
    "davidmh/mdx.nvim",
    config = true,
    dependencies = { "nvim-treesitter/nvim-treesitter" }
  },

  {
    "danymat/neogen",
    config = true,
    -- Uncomment next line if you want to follow only stable versions
    version = "*"
  }
}
