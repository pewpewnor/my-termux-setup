#!/bin/bash

## Install dependency packages

echo -e "+++ Install python +++"
echo -e "\\n"

pkg install python -y

sleep 2;

echo -e "+++ Install cURL +++"
echo -e "\\n"

pkg install curl -y

sleep 2;

echo -e "\\n"
echo -e "+++ install ffmpeg (For Audio Conversion) +++"
echo -e "\\n"

pkg install ffmpeg -y

sleep 2;

echo -e "\\n"
echo -e "+++ Successfully Installed the dependency packages +++"
sleep 2;

echo -e "\\n"

## Download Youtube-dl
echo -e "+++ Downloading Youtube-dl +++"
echo -e "+++ Please Wait +++"

curl -s -L https://github.com/yt-dlp/yt-dlp/releases/download/2025.06.09/yt-dlp_linux -o /data/data/com.termux/files/usr/bin/ytdl

sleep 2;
echo -e "+++ Youtube-dl Downloaded Successfully +++"

echo -e "\\n"

sleep 2;

## Set Permission
echo -e "+++ Set Permission to Execute the Script +++"

chmod a+rx /data/data/com.termux/files/usr/bin/ytdl

echo "+++ Permission Granted +++"

sleep 2;

echo -e "\\n"

## Verify the Installation
echo -e "+++ Verifiy Installation +++"

ytdl --version
command -v ytdl

sleep 2;

echo -e "\\n"

echo "+++ Installation completed successfully +++"
echo "+++ You can Now use Youtube-dl to download the Youtube Videos +++"
