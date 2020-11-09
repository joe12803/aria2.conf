#!/bin/bash

files=$3
#获取扩展名
#ext=${files##*.}
#fl=$(echo $files|sed -e 's/ /\\ /g;s/\[/\\[/g;s/\]/\\]/g;s/(/\\(/g; s/)/\\)/g')
spath=${files%/*}
##字幕特殊
ss=${files%.*}
fl=$(echo $ss|sed -e 's/\[/\\[/g;s/\]/\\]/g')
nspath="${spath}_en.mp4"
srt="${fl}.srt"
#srt="Simplified\ Chinese.chi.srt"
# ffmpeg  -i "$files"  -threads 200 -preset ultrafast  -vf subtitles="$srt" "$nspath" 
ffmpeg  -i "$files"  -threads 200 -preset ultrafast  -vf subtitles="$srt" "$nspath" >/dev/null 2>&1 &
str="\n"
sstr=$(echo -e $str)
echo $sstr
