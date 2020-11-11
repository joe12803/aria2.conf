#!/bin/bash
  
files=$3
echo $3 >> 33.txt
#获取扩展名
#ext=${files##*.}
#fl=$(echo $files|sed -e 's/ /\\ /g;s/\[/\\[/g;s/\]/\\]/g;s/(/\\(/g; s/)/\\)/g')
main_path=${files%/*}
echo $main_path
spath=${files%/*}
last=${files##*/}
echo $last
##字幕特殊
ss=${files%.*}
#fl=$(echo $main_path|sed -e 's/\[/\\[/g;s/\]/\\]/g')
fl=$(echo $ss|sed -e 's/ /\\ /g;s/\[/\\[/g;s/\]/\\]/g;s/(/\\(/g; s/)/\\)/g')
last_srt=$(echo $last|sed -e 's/\[/\\[/g;s/\]/\\]/g')
nspath="${spath}_en.mp4"
srt="${fl}.srt"
echo $srt
#srt="${fl}.srt"
#srt="Simplified\ Chinese.chi.srt"
# ffmpeg  -i "$files"  -threads 200 -preset ultrafast  -vf subtitles="$srt" "$nspath" 
nohup ffmpeg  -i "$files"  -threads 200 -preset ultrafast  -vf subtitles="$srt" "$nspath" >/dev/null 2>&1 &
str="\n"
sstr=$(echo -e $str)
echo $sstr
