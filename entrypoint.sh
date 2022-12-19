#!/bin/bash -ue

# why?
export SteamAppID=892970 

export LD_LIBRARY_PATH="/opt/game:/opt/game/linux64:${LD_LIBRARY_PATH:-}"
/opt/game/valheim_server.x86_64 -name "${NAME:-name}" -port "${PORT:-2456}" -nographics -batchmode -world "${WORLD:-LAN of DOOM}" -password "${PASSWORD:-}" -public 1
