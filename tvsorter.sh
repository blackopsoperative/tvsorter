#!/bin/bash
cur_dir=$(pwd | cut -d / -f 7) # CURrent DIRectory

for f in *.mp4;
do
    #echo "$f"
    season=$(echo "$PWD" | grep -Eo '.$')
    eofmp4cut=$(echo "$f" | sed 's/\.mp4//1')
    ep=$(echo "$eofmp4cut" | grep -Eo '[0-9]+$')
    #echo $ep

    filename="${cur_dir} - s${season}e${ep}.mp4"
    echo "$filename"
    #echo "$se"
    mv "$f" "$filename"
    #echo "$f"
done
