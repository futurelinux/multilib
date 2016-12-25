#!/usr/bin/env bash
#
# This script it used to display a warning to the user about:
# - chakra not being officially supported by Steam, so ask for helping on the forum
# - a link to the wiki
#
# also a "don't show this message again" checkbox is present
# then start steam normally

kdialog --dontagain steam_warnings_chakra:nofilemsg --msgbox \
"Chakra Linux is not officially supported by Valve.
For help visit the wiki page of Steam https://chakraos.org/wiki/index.php?title=Steam
or ask for help in the forum"

# see https://chakraos.org/wiki/index.php?title=Steam#Missing_Direct_Rendering
export LD_PRELOAD="/usr/lib/libstdc++.so.6 /usr/lib32/libstdc++.so.6 /usr/lib/libgcc_s.so.1 /usr/lib32/libgcc_s.so.1"

/usr/bin/steam %U
