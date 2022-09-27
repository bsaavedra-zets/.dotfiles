
local db = require('dashboard')
  local home = os.getenv('HOME')


db.custom_header = {
   [[                                    ]],
   [[   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡤⠤⢤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀     ]],
   [[   ⠀⠀⠀⠀⠀⠀⠀⠀⣀⡴⠚⠉⠀⠀⠀⠀⠀⠀⠉⠲⣄⠀⠀⠀⠀⠀⠀⠀⠀    ]],
   [[   ⠀⠀⠀⠀⠀⠀⣴⣾⣿⣿⡇⢠⠀⠀⠀⠀⠀⠀⠀⢄⠈⢳⡀⠀⠀⠀⠀⠀⠀    ]],
   [[   ⠀⠀⠀⠀⠀⣾⠟⠈⢸⣿⣷⢾⣓⣚⣛⣛⣒⠒⢲⣤⣄⡀⢳⠀⠀⠀⠀⠀⠀    ]],
   [[   ⠀⠀⠀⠀⠀⢸⡀⠀⡼⠿⣿⣯⣭⣭⣭⣭⣍⣉⡉⠉⠙⠛⠺⢆⡀⠀⠀⠀⠀    ]],
   [[   ⠀⠀⠀⢀⣤⣾⠇⣸⣧⣶⣿⠿⣿⣿⡏⠻⣿⣿⢿⣿⣦⣄⠀⠀⣿⠷⣄⠀⠀    ]],
   [[   ⠀⢀⣴⣯⣀⡏⢰⣿⣿⣿⡯⣀⠙⣿⠁⠀⠘⣿⡌⢿⢿⣿⣆⠀⠘⠃⠨⣷⡄    ]],
   [[   ⢀⣾⢠⣯⡟⠙⢻⣿⣿⠹⠀⠘⠻⡉⠁⠀⢀⠟⠃⠺⠈⣿⣿⠃⠀⠀⢀⠈⣻    ]],
   [[   ⠸⣇⣸⠋⢀⣿⠿⣿⣿⠀⣀⠘⢃⡇⠀⣇⠨⣙⠃⣀⠿⢻⣿⠳⠀⠀⠸⣿⠏    ]],
   [[   ⠀⠻⣇⠀⢸⡏⠀⢧⡏⢰⠤⠭⠍⠤⠤⠭⠤⠬⠿⠿⡇⣼⡼⠀⢀⡤⠖⠃⠀    ]],
   [[  ⠀⠀⠈⠳⣄⠙⢷⣦⣽⣦⣷⡆⠤⠤⠤⠤⠒⠒⢚⣿⣼⠯⠔⠚⠉⠀⠀⠀⠀     ]],
   [[   ⠀⠀⠀⠀⠈⠳⣄⠙⠦⣀⠙⠿⣷⣦⣤⣤⣴⣶⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀    ]],
   [[   ⠀⠀⠀⠀⠀⠀⠈⠳⣄⠀⠉⢹⣿⣏⠀⠈⣹⣷⠖⠦⣄⠀⠀⠀⠀⠀⠀⠀⠀    ]],
   [[   ⠀⠀⠀⠀⠀⠀⠀⠀⢈⡇⢈⣉⣿⣌⠁⡀⢁⣼⠀⠀⠈⠙⠦⣄⠀⠀⠀⠀⠀    ]],
   [[   ⠀⠀⠀⠀⠀⠀⠀⠀⡼⢠⡾⣸⣉⣻⡳⢿⣟⢉⡇⠀⢹⡗⢦⣈⠙⣦⣄⠀⠀    ]],
   [[   ⠀⠀⠀⠀⠀⠀⠀⣰⡧⣾⣡⠇⢠⣿⢶⡺⣿⡌⠹⣄⣦⢧⠀⠈⣿⡌⣿⠟⠀    ]],
   [[   ⠀⠀⠀⠀⠀⠀⢠⣿⡥⣼⠏⠀⠈⠉⣽⣯⡁⠉⢀⣹⣿⣈⣇⠘⠛⢻⠙⡄⠀    ]],
   [[   ⠀⠀⠀⠀⠀⢠⣿⡟⢡⣼⣷⣿⣿⢿⣯⠽⠿⢭⣽⡿⣿⠈⣿⡆⠀⢈⠇⢳⠀    ]],
   [[   ⠀⠀⠀⠀⠀⠀⠉⠉⢻⣿⣿⣿⡿⠾⠗⠀⠀⠸⠙⡆⢻⣷⠴⠃⠀⢿⣦⣼⠇    ]],
   [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠘⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠃⠘⠛⠃⠀⠀⠀⠉⠀⠀     ]],
}


-- db.custom_center = {
--    a = {description = {'  Find File          '}, command = 'Telescope find_files'},
--   d = {description = {'  Search Text        '}, command = 'Telescope live_grep'},
--   b = {description = {'  Recent Files       '}, command = 'Telescope oldfiles'},
--   e = {description = {'  Config             '}, command = 'edit ~/.config/nvim/init.lua'}
-- }
db.custom_center = {
      -- {desc = '          Recently latest session                 ', action ='SessionLoad'},
      
      {
         desc = ' Find  File                              ',
         shortcut = 'SPC s l',
         action = 'Telescope find_files find_command=rg,--hidden,--files',
      },
   
      {
         desc = ' File Browser                            ',
         shortcut = 'SPC f h',
         action =  'Telescope file_browser',
      },
      
      {
         desc = ' Search Text                             ',
         shortcut = 'SPC f f',
         action = 'Telescope live_grep',
      },

      {
         desc = ' Dropbox Workspace                       ',
         shortcut = 'SPC f b',
         action = 'edit ~/Dropbox/Workspace',
      },
      
      {
         desc = ' Open Nvim Config                        ',
         shortcut = 'SPC f w',
         action = 'edit ~/.config/nvim',
      },

      {
         desc = ' Open Qtile Config                       ',
         shortcut = 'SPC f d',
         action = 'edit ~/.config/qtile',
      },
    }
