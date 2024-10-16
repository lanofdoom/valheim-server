#!/bin/sh -ue

export LD_LIBRARY_PATH=/opt/game:/opt/game/linux64:${LD_LIBRARY_PATH:-}

/opt/game/valheim_server.x86_64 -public 0 \
  -name "${GAME_NAME:-LAN of DOOM}" \
  -port ${PORT:-2456} \
  -world "${GAME_WORLD:-Dedicated}" \
  -password "${GAME_PASSWORD:-}"
