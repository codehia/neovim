return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()

    -- -- Document existing key chains
    -- require('which-key').register {
    --   { '', desc = '<leader>c_', hidden = true },
    --   { '', desc = '<leader>s_', hidden = true },
    --   { '', group = '[S]earch' },
    --   { '', group = '[T]oggle' },
    --   { '', group = '[W]orkspace' },
    --   { '', desc = '<leader>t_', hidden = true },
    --   { '', desc = '<leader>w_', hidden = true },
    --   { '', desc = '<leader>r_', hidden = true },
    --   { '', desc = '<leader>h_', hidden = true },
    --   { '', group = '[D]ocument' },
    --   { '', group = '[R]ename' },
    --   { '', desc = '<leader>d_', hidden = true },
    --   { '', group = 'Git [H]unk' },
    --   { '', group = '[C]ode' },
    -- }
    --
    -- -- visual mode
    -- require('which-key').register {
    --   { '<leader>h', desc = 'Git [H]unk', mode = 'v' },
    -- }
  end,
}
