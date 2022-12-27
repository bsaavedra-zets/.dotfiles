from libqtile import widget, bar
from libqtile import qtile
from libqtile.config import  Screen
from . import colors


colors, backgroundColor, foregroundColor, workspaceColor, foregroundColorTwo =colors.nord() 

size_bar = 30
system_font = "FiraCode NF "
widget_font_size = 15
icon_size = 18
net_interface = 'wlo1'


# funcion
def separation(line):
    return widget.Sep(
        linewidth = line,
        padding = 15,
        foreground = foregroundColorTwo,
        background = backgroundColor,
    )


widget_defaults = dict(
    font=system_font,
    fontsize=widget_font_size,
    padding=2,

)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(
                    active = colors[2],
                    inactive = colors[1],
                    # border_width = 5,
                    disable_drag = True,
                    fontsize = 20,
                    foreground = foregroundColor,
                    highlight_method = 'block',
                    margin_x = 0,
                    margin_y = 3,
                    other_current_screen_border = colors[3],
                    other_screen_border = colors[3],
                    padding_x = 0,
                    padding_y = 10,
                    this_current_screen_border = colors[3],
                    this_screen_border = colors[3],
                    urgent_alert_method = 'block',
                    urgent_border = colors[9],
                ),
                widget.Prompt(),
                widget.WindowName(
                    foreground = colors[4],
                    background = backgroundColor,
                ),

                widget.CurrentScreen(
                    # active_text = "Active",
                    # inactive_text = "Inactive"
                    active_color = colors[5],
                    inactive_color = colors[9],

                ),

                separation(1),

                # Update group
                widget.CheckUpdates(
                    background = backgroundColor,
                    colour_have_updates = colors[6],
                    colour_no_updates = colors[6],
                    no_update_string = ' 0',
                    display_format = ' {updates}',
                    update_interval = 1800,
                    custom_command = 'checkupdates',
                ),

                separation(0),
                # Group 1

                widget.Memory(
                    background = backgroundColor,
                    foreground = colors[9],
                    format = ' {MemUsed:.0f}{mm}/{MemTotal:.0f}{mm}',
                    mouse_callbacks = {
                        'Button1': lambda: qtile.cmd_spawn("alacritty -e htop")
                    },
                ),

                separation(0),
                widget.DF(
                    visible_on_warn = False,
                    partition = '/',
                    format = ' {uf}{m}',
                    foreground = colors[9],
                    background = backgroundColor,
                ),
                separation(0),


                # icons('直', backgroundColor, colors[7]),
                widget.Net(
                    interface = net_interface,
                    format = '直 {down} ↓↑ {up}',
                    background = backgroundColor,
                    foreground = colors[7]
                ),                
                separation(0),

                widget.Clock(
                    background = backgroundColor,
                    foreground = colors[10],
                    format = " %a %d %m %Y |  %I:%M %p",
                ),
                separation(0),

                # widget.CurrentLayoutIcon(
                #     background = backgroundColor,
                #     scale = 0.5
                # ),
                widget.CurrentLayout(
                    background = backgroundColor,
                    foreground = colors[5]
                ),

                separation(0),

                widget.Systray(
                    icon_size = icon_size,
                    background = backgroundColor,
                ),


            ],
            size_bar,
            background = backgroundColor
            # border_width=[2, 0, 2, 0],  # Draw top and bottom borders
            # border_color=["ff00ff", "000000", "ff00ff", "000000"]  # Borders are magenta
        ),
    ),

    # Second Screen
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(
                    active = colors[2],
                    inactive = colors[1],
                    # border_width = 5,
                    disable_drag = True,
                    fontsize = 15,
                    foreground = foregroundColor,
                    highlight_method = 'block',
                    margin_x = 0,
                    margin_y = 3,
                    other_current_screen_border = colors[3],
                    other_screen_border = colors[3],
                    padding_x = 0,
                    padding_y = 10,
                    this_current_screen_border = colors[3],
                    this_screen_border = colors[3],
                    urgent_alert_method = 'block',
                    urgent_border = colors[9],
                ),
                widget.Prompt(),
                widget.WindowName(
                    foreground = colors[4],
                    background = backgroundColor,
                ),

                separation(1),
                
                widget.CapsNumLockIndicator(
                    fmt="{}",
                    background = backgroundColor,
                    foreground = colors[7],
                ),



                separation(1),

                widget.CurrentScreen(
                        active_text = "active",
                        inactive_text = "inactive",
                        active_color = colors[5],
                        inactive_color = colors[9],

                    ),
                
                separation(1),
                
                widget.Clock(
                    background = backgroundColor,
                    foreground = colors[10],
                    format = " %I:%M %p",
                ),

                separation(0),

                widget.CurrentLayout(
                    background = backgroundColor,
                    foreground = colors[5]
                ),


            ],
        25,
        background = backgroundColor
        )

    ),

    # Third Screen
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(
                    active = colors[2],
                    inactive = colors[1],
                    # border_width = 5,
                    disable_drag = True,
                    fontsize = 15,
                    foreground = foregroundColor,
                    highlight_method = 'block',
                    margin_x = 0,
                    margin_y = 3,
                    other_current_screen_border = colors[3],
                    other_screen_border = colors[3],
                    padding_x = 0,
                    padding_y = 10,
                    this_current_screen_border = colors[3],
                    this_screen_border = colors[3],
                    urgent_alert_method = 'block',
                    urgent_border = colors[9],
                ),
                widget.Prompt(),
                widget.WindowName(
                    foreground = colors[4],
                    background = backgroundColor,
                ),

                widget.CurrentScreen(
                    active_text = "active",
                    inactive_text = "inactive",
                    active_color = colors[5],
                    inactive_color = colors[9],
                ),

                separation(1),

                widget.Clock(
                    background = backgroundColor,
                    foreground = colors[10],
                    format = " %I:%M %p",
                ),

                separation(0),

                widget.CurrentLayout(
                    background = backgroundColor,
                    foreground = colors[5]
                ),


            ],
        25,
        background = backgroundColor
        )

    ),
]
