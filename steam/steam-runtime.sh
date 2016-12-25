#!/usr/bin/env bash

# see https://chakraos.org/wiki/index.php?title=Steam#Missing_Direct_Rendering
export LD_PRELOAD="/usr/lib/libstdc++.so.6 /usr/lib32/libstdc++.so.6 /usr/lib/libgcc_s.so.1 /usr/lib32/libgcc_s.so.1"
exec /usr/lib/steam/steam "$@"
