# LAN of DOOM Valheim Server
Docker image for a private Valheim server as used by the LAN of DOOM.

# Installation
Run ``docker pull ghcr.io/kleinpa/valheim-server:latest``

# Environmental Variables
``NAME`` The name of the server as listed in the server browser.

``PASSWORD`` The password users must enter in order to join the server.

``WORLD`` The first map to run on the server.

``PORT`` The port to use for the server. ``2456`` by default.
