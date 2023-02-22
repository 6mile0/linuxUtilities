#!/bin/sh
echo "$# 名のアカウントを作成します"

for user in "$@"
do
 echo "> $user さんを作成します"
 eval "sudo useradd -m $user -d /lc22/rokumile -s /bin/bash"
 echo "作成に成功しました"
done
