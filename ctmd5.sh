#!/bin/bash
echo $3 >> 3.txt
/usr/local/bin/ctmd5 $3
year=`date +%Y`
month=`date +%m`
day=`date +%d`
filepath="$year$month$day"
/usr/local/share/BaiduPCS-Go-v3.6.2-linux-arm64/BaiduPCS-Go mkdir $filepath
str=$"\n"
nohup /usr/local/share/BaiduPCS-Go-v3.6.2-linux-arm64/BaiduPCS-Go u $3 /$filepath  >/dev/null 2>&1 &
sstr=$(echo -e $str)
echo $sstr




