#!/bin/ash
# SinusBot Installation Script
#
# Server Files: /mnt/server
apk update
apk add curl

cd /mnt/server

curl -sS https://www.sinusbot.com/pre/sinusbot-0.13.37-f7e9ece.tar.bz2 | tar xj
chmod +x sinusbot
rm -r plugin

sed -i "s|^TS3Path.*|TS3Path = \"/opt/sinusbot/TeamSpeak3-Client-linux_amd64/ts3client_linux_amd64\"|g" config.ini.dist
echo 'YoutubeDLPath = "/usr/local/bin/youtube-dl"' >> config.ini.dist
