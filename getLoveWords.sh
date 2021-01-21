#!/bin/bash

url="https://chp.shadiao.app/api.php"
loveWords=`curl "${url}" `
nowDate=$(date "+%Y-%m-%d")
echo $nowDate
echo -e $loveWords
sed -i "N;2a#### ${nowDate}\n- ${loveWords}\n" ./loveWords.md
