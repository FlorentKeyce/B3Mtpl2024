#!/bin/bash

echo "---"

while IFS=':' read -r username password uid gid info home shell; do

    if [[ $username != \#* ]]; then
        echo "- username: $username"
        echo "  password: $password"
        echo "  uid: $uid"
        echo "  gid: $gid"
        echo "  info: $info"
        echo "  home: $home"
        echo "  shell: $shell"
    fi
done < /etc/passwd
