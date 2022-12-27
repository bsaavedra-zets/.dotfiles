from libqtile import layout
from libqtile.config import Match
from . import colors

colors, backgroundColor, foregroundColor, workspaceColor, foregroundColorTwo =colors.nord() 
def init_layout_theme():
    return {"margin":5,
            "border_width":2,
            "border_focus": colors[3],
            "border_normal": colors[3]}

layout_theme = init_layout_theme()

layouts = [
    layout.Max(**layout_theme),
    layout.Columns(**layout_theme, border_on_single = True),
    # layout.Stack(num_stacks=2),
    # layout.Bsp(**layout_theme),
    # layout.Matrix(**layout_theme),
    # layout.MonadTall(**layout_theme),
    # layout.MonadWide(),
    # layout.RatioTile(**layout_theme),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]


floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ],
    border_focus = colors[3]
)
