# SinusBot Docker image

[![Docker Automated build](https://img.shields.io/docker/automated/brainstone/sinus-bot.svg)](https://store.docker.com/community/images/brainstone/sinus-bot)
[![Docker Build Status](https://img.shields.io/docker/build/brainstone/sinus-bot.svg)](https://store.docker.com/community/images/brainstone/sinus-bot/builds)
[![Docker Pulls](https://img.shields.io/docker/pulls/brainstone/sinus-bot.svg)](https://store.docker.com/community/images/brainstone/sinus-bot)
[![Image Info](https://images.microbadger.com/badges/image/brainstone/sinus-bot.svg)](https://microbadger.com/images/brainstone/sinus-bot)

## Installation

By using this image you accept the [Privacy statement of the TeamSpeak Systems GmbH](https://www.teamspeak.com/en/policies) and the license agreement of the SinusBot.

### Adding to Pterodactyl

Just use the script in `install_pterodactyl.sh`

## Get Sinusbot Password

After starting the SinusBot docker image with `docker run` an ID will be returned in the next line.
Use the command `docker logs <ID>` (replace `<ID>` with the long container ID) to print out the logs of the container.
The beginning of the log should contain your credentials:

```
[...]
-------------------------------------------------------------------------------
Generating new bot instance with account 'admin' and password 'YOUR_PASSWORD_HERE'
PLEASE MAKE SURE TO CHANGE THE PASSWORD DIRECTLY AFTER YOUR FIRST LOGIN!!!
-------------------------------------------------------------------------------
[...]
```

## Password overriding

By setting the `OVERRIDE_PASSWORD` environment variable you can override the password of the SinusBot. Usage:
