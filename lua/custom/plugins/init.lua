-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvim-treesitter/nvim-treesitter-context',
    config = function()
      require('treesitter-context').setup {
        enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
        max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
        min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
        line_numbers = true,
        multiline_threshold = 20, -- Maximum number of lines to show for a single context
        trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
        mode = 'cursor', -- Line used to calculate context. Choices: 'cursor', 'topline'
        -- Separator between context and content. Should be a single character string, like '-'.
        -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
        separator = nil,
        zindex = 20, -- The Z-index of the context window
        on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
      }
    end,
  },
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
      vim.api.nvim_set_keymap('n', 'zz', '<cmd>ZenMode<CR>', { noremap = true, silent = true })
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
              path = 4,
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
}
