#!/usr/bin/env bash

if hash kdialog 2>/dev/null; then
    kdialog --dontagain steam_warnings_chakra:nofilemsg --msgbox \
"Chakra Linux is not officially supported by Valve.
For help, please visit https://community.chakralinux.org."
fi

export LD_PRELOAD='/usr/$LIB/libstdc++.so.6 /usr/$LIB/libgcc_s.so.1 /usr/$LIB/libxcb.so.1 /usr/$LIB/libgpg-error.so'
exec /usr/lib/steam/steam "$@"
