#!/bin/bash
/usr/local/bin/ctmd5 $3
year=`date +%Y`
month=`date +%m`
day=`date +%d`
filepath="$year$month$day"
/content/BaiduPCS-Go-v3.6.2-linux-amd64/BaiduPCS-Go mkdir $filepath
str=$"\n"
nohup /content/BaiduPCS-Go-v3.6.2-linux-amd64/BaiduPCS-Go u $3 /$filepath  >/dev/null 2>&1 &
sstr=$(echo -e $str)
echo $sstr




