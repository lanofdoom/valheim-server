# LAN of DOOM Valheim Server

Docker image for a private Valheim server as used by the LAN of DOOM.

# Installation

Run `docker pull ghcr.io/lanofdoom/valheim-server:latest`

# Environmental Variables

`GAME_NAME` The name of the server (default `LAN of DOOM`)

`GAME_WORLD` (default `Dedicated`)

`GAME_PASSWORD` The password users must enter in order to join the server. (default ` `)

`PORT` The port to use for the server. (default `2456`)

# Networking

By default the game listens on `$PORT/udp` and the steam query service uses `$PORT+1/udp`.

# Game Data

Persistent data is stored in the container's `/data` directory.
