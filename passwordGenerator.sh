#!/bin/sh
echo "$# 名のパスワードを生成します"

for user in "$@"
do
 echo "> $user さんのパスワードを生成します\n"
 pass=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9!@#$%^&*()_+-=[]{}<>?' | fold -w 15 | head -n 1)
 echo "=================================================="
 echo "生成されたパスワード: $pass"
 echo "=================================================="
 echo "\n"
 echo "$user:$pass" | sudo chpasswd
 echo "> $user さんのパスワード生成に成功しました\n"
done
