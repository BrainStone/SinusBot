#!/bin/bash

case "$1" in

"teamspeak")
	echo "Installing TeamSpeak Client..."
	# Get latest TeamSpeak client version
	#VERSION=$(wget -q -O - http://dl.4players.de/ts/releases/ | grep -Po '(?<=href=")[0-9]+(\.[0-9]+){2,3}(?=/")' | sort -Vr | head -1)
	VERSION="3.1.9"

	# Download TeamSpeak client
	echo "Downloading TeamSpeak Client v$VERSION..."
	wget -q "http://dl.4players.de/ts/releases/$VERSION/TeamSpeak3-Client-linux_amd64-$VERSION.run"
	echo "Downloaded TeamSpeak Client"

	# Install TeamSpeak Client
	chmod +x TeamSpeak3-Client-linux_amd64-$VERSION.run
	yes | ./TeamSpeak3-Client-linux_amd64-$VERSION.run
	rm TeamSpeak3-Client-linux_amd64-$VERSION.run

	# Download and Copy SinusBot plugin
	mkdir TeamSpeak3-Client-linux_amd64/plugins
	wget -qO - https://www.sinusbot.com/pre/sinusbot-0.13.37-f7e9ece.tar.bz2 | tar xj plugin/libsoundbot_plugin.so
	mv plugin/libsoundbot_plugin.so TeamSpeak3-Client-linux_amd64/plugins
	rm -r plugin

	# Remove glx-integration lib
	rm TeamSpeak3-Client-linux_amd64/xcbglintegrations/libqxcb-glx-integration.so

	echo "Successfully installed the TeamSpeak Client"
	;;
"youtube-dl")
	echo "Downloading youtube-dl..."
	wget -q https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
	chmod a+rx /usr/local/bin/youtube-dl
	echo "Successfully installed youtube-dl"
	;;
esac
