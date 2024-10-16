#!/bin/bash -ue

game_name="local"
game_root=$HOME/.local/share/valheim/${game_name}
mkdir -p ${game_root}

bazel run //:image_tarball && docker run --rm -it \
    --name valheim-server \
    --cap-add=sys_nice \
    --stop-timeout 120 \
    -p 2456-2457:2456-2457/udp \
    -v ${game_root}:/data \
    -e GAME_NAME=${game_name} \
    -e GAME_PASSWORD="test" \
    valheim-server:bazel
