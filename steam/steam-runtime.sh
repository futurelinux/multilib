#!/usr/bin/env bash

# see https://chakraos.org/wiki/index.php?title=Steam#Missing_Direct_Rendering
export LD_PRELOAD='/usr/$LIB/libstdc++.so.6 /usr/$LIB/libgcc_s.so.1 /usr/$LIB/libxcb.so.1 /usr/$LIB/libgpg-error.so'
exec /usr/lib/steam/steam "$@"
