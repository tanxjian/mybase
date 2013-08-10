#!/bin/bash
#
#use crontab -e to set timeing doing
#
#cd /home/xjtan/work/own/mybase
date=`date`
#ip=`curl ifconfig.me`
git_commit="[mybase]:update mybase data [${date}]"

echo $git_commit
git add .
git commit -m "$git_commit"
git pull
git push
#while [ $? = 1 ];do
#    echo "  git push err,try again  "
#    git push
#done
