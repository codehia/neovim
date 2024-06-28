return { -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [']quote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup()
    -- Simple and easy statusline.
    --  You could remove this setup call if you don't like it,
    --  and try some other statusline plugin
    local statusline = require 'mini.statusline'
    -- set use_icons to true if you have a Nerd Font
    statusline.setup { use_icons = vim.g.have_nerd_font }
    -- You can configure sections in the statusline by overriding their
    -- default behavior. For example, here we set the section for
    -- cursor location to LINE:COLUMN
    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return '%2l:%-2v'
    end

    local starter = require 'mini.starter'
    starter.sections.recent_files = {
      current_dir = true,
      show_path = true,
    }
    starter.setup {
      evaluate_single = true,
      header = function()
        return [[
╭─────────────────────────────────────────────────────────────────────╮
  Debugging is twice as hard as writing the code in the first place.
  Therefore, if you write the code as cleverly as possible, you are,
  by definition, not smart enough to debug it.
                                              - Brian Kernighan
╰─────────────────────────────────────────────────────────────────────╯
        ]]
      end,
      footer = function()
        return [[
                                                o
                                                 o   ^__^
                                                  o  (oo)\_______
                                                     (__)\       )\/\
                                                         ||----w |
                                                         ||     ||
           ]]
      end,
      content_hooks = {
        starter.gen_hook.aligning('center', 'center'),
        starter.gen_hook.adding_bullet '   ',
      },
    }
    --   require('mini.starter').setup {
    --     -- Set the statusline
    --     statusline = statusline.get_statusline,
    --     header = [[
    -- ╭─────────────────────────────────────────────────────────────────────╮
    --   Debugging is twice as hard as writing the code in the first place.
    --   Therefore, if you write the code as cleverly as possible, you are,
    --   by definition, not smart enough to debug it.
    --                                               - Brian Kernighan
    -- ╰─────────────────────────────────────────────────────────────────────╯
    --     ]],
    --     content_hooks = {
    --       starter.gen_hook.adding_bullet '- ',
    --       starter.gen_hook.aligning('center', 'center'),
    --     },
    --
    require('mini.animate').setup()
  end,
}
