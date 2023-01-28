load("@io_bazel_rules_docker//container:container.bzl", "container_image", "container_layer")
load("@com_github_lanofdoom_steamcmd//:defs.bzl", "steam_depot_layer")

steam_depot_layer(
    name = "valheim_dedicated_linux",
    app = "896660",
    directory = "/opt/game",
)

container_layer(
    name = "ca-certs",
    directory = "/etc/ssl/certs",
    files = ["ca-certificates.crt"],
)

container_image(
    name = "server_image",
    base = "@base_image//image",
    empty_dirs = ["/data"],
    entrypoint = ["/entrypoint.sh"],
    env = {
        "GAME_NAME": "LAN of DOOM",
        "GAME_WORLD": "Dedicated",
        "GAME_PASSWORD": "",
        "PORT": "2456",
    },
    files = [
        ":entrypoint.sh",
    ],
    layers = [
        ":valheim_dedicated_linux",
        ":ca-certs",
    ],
    symlinks = {
        "/root/.steam/sdk32/steamclient.so": "/opt/game/bin/steamclient.so",
        "/root/.config/unity3d/IronGate/Valheim": "/data",
    },
)
