from libqtile.config import Key
from libqtile.command import lazy

mod = "mod4"
alt = "mod1"

keys = [
    # A list of available commands that can be bound to keys can be found
    # at https://docs.qtile.org/en/latest/manual/config/lazy.html
    # Switch between windows
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(),
        desc="Move window focus to other window"),
    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(),
        desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(),
        desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(),
        desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(),
        desc="Move window up"),
    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], "h", lazy.layout.grow_left(),
        desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(),
        desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(),
        desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(),
        desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(),
        desc="Reset all window sizes"),
    Key([mod, "shift"], "f", lazy.window.toogle_floating()),
    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key(
        [mod, "shift"],
        "Return",
        lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack",
    ),

    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key([mod], "r", lazy.spawncmd(),
        desc="Spawn a command using a prompt widget"),

    # Volume keys
    Key([], "XF86AudioRaiseVolume", lazy.spawn("amixer set Master 10%+")),
    Key([], "XF86AudioLowerVolume", lazy.spawn("amixer set Master 10%-")),
    Key([], "XF86AudioMute",
            lazy.spawn("amixer -D pulse set Master 1+ toggle")),

    # Control Play
    Key([], "XF86AudioPlay", lazy.spawn("playerctl play-pause")),
    # Control Next
    Key([], "XF86AudioNext", lazy.spawn("playerctl next")),

    # Brightness keys
    Key([], "XF86MonBrightnessUp", lazy.spawn("xbacklight -inc 10")),
    Key([], "XF86MonBrightnessDown", lazy.spawn("xbacklight -dec 10")),

    # Change Language
    Key([mod, "shift"], "e", lazy.spawn("setxkbmap latam"), desc="Spanish"),
    Key([mod, "shift"], "i", lazy.spawn("setxkbmap us"), desc="English"),


    # APPLICATIONS

    # Terminal
    Key([mod], "Return", lazy.spawn("alacritty"), desc="Launch terminal"),

    # rofi
    Key([mod], "m", lazy.spawn("rofi -show drun"), desc="Open rofi's menu"),
    Key([mod, "shift"], "o", lazy.spawn("rofi -show window"),
        desc="Open Windows"),

    # firefox
    Key([mod], "b", lazy.spawn("firefox"), desc="launch firefox"),

    # Thunar
    Key([mod], "f", lazy.spawn("thunar")),

    # Pick color
    Key([mod], "p", lazy.spawn("python -m pick")),

    # Screenshot
    Key([mod], "s", lazy.spawn("scrot")),
    Key([mod, "shift"], "s", lazy.spawn("scrot -s")),

    # Spotify
    Key([alt, "control"], "s", lazy.spawn("spotify")),

    # Discord
    Key([alt, "control"], "d", lazy.spawn('discord')),

    # Nitrogen
    Key([alt, "control"], "b", lazy.spawn("nitrogen")),

    # Logout
    Key([mod], "x", lazy.spawn("archlinux-logout")),
]
