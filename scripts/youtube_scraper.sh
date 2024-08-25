#!/usr/bin/bash

SONG_NAME=$(echo $1 | sed -e 's/\ /_/g')
ARTIST_NAME=$(echo $2 | sed -e 's/\ /_/g')

STORAGE="../data/$SONG_NAME""-""$ARTIST_NAME"
LINK=$3

if [ ! -d "$STORAGE" ]; then
  mkdir $STORAGE
fi


source ../env/bin/activate
yt-dlp -x -q -P $STORAGE $LINK
deactivate

