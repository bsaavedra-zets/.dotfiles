from libqtile.config import Key, Group
from libqtile.command import lazy
from .keys import mod, keys



# Get the icons at https://www.nerdfonts.com/cheat-sheet (you need a Nerd Font)
# Icons: 
# nf-fa-firefox, 
# nf-fae-python, 
# nf-dev-terminal, 
# nf-fa-code, 
# nf-oct-git_merge, 
# nf-linux-docker,
# nf-mdi-image, 
# nf-mdi-layers
# nf-oct-file_directory
# nf-mdi-spotify
# nf-mdi-discord

# nf-weather-moon_alt_waning_gibbous_1
# nf-weather-moon_alt_waning_gibbous_2
# nf-weather-moon_alt_waning_gibbous_3


groups = [Group(i) for i in [
    # "  ", "  ", "  ","  "," 阮 ", " ﭮ ", 
    # "  ", "  ", "  " nt nt
    # "  ", "  ", "  ", "  ", "  ", "  ", "  ", " ﭮ "
     "  ", "  ", "  ", "  ", "  ", " ﭮ "
    # " 一 ", " 二 ", " 三 ", " 四 ", " 五 ", " 六 ", " 七 ", " 八 ", " 九 "

]]


for i, group in enumerate(groups):
    pages = str(i+1)
    keys.extend(
        [
            # mod1 + letter of group = switch to group
            Key([mod], pages, lazy.group[group.name].toscreen()),
            # mod1 + shift + letter of group = switch to & move focused window to group
            Key([mod, "shift"], pages, lazy.window.togroup(group.name),
            ),
        ]
    )

