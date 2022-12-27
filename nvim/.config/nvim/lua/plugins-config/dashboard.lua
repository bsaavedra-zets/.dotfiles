
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
     action =  'Telescope find_files',
  },

  -- {
  --    desc = ' Search Text                             ',
  --    shortcut = 'SPC f f',
  --    action = 'Telescope live_grep',
  -- },

  {
     desc = ' Dropbox Workspace                       ',
     shortcut = 'SPC f b',
     action = 'edit ~/Dropbox/Workspace',
  },

  {
     desc = ' Open Nvim Config                        ',
     shortcut = 'SPC f w',
     action = 'edit ~/.dotfiles/nvim/.config/nvim/',
  },

  {
     desc = ' Open Qtile Config                       ',
     shortcut = 'SPC f d',
     action = 'edit ~/.dotfiles/qtile/.config/qtile',
  },


  {
    desc = ' Open Zsh config                         ',
    shortcut = 'SPC f z',
    action = 'edit ~/.zshrc',
  },

  {
    desc = ' Alacritty config                        ',
    shortcut = 'SPC a h',
    action = 'edit ~/.config/alacritty',
  },
  
}
