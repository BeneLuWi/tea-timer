#!/bin/zsh

if [[ $# -eq 0 ]]
  then vared -p "How many minutes does the tea need?  " -c n
  else n=$1
fi

n=$((n * 60))
for ((t=10; t<=n; t+=10))
do
    sleep 10
    echo -n "#"
    if ((t % 60 == 0 ))
    then
        echo
    fi
done
echo "Tea is Done!"
osascript -e 'display notification "The Tea is Done" with title "Tea Timer"'
afplay /System/Library/Sounds/Funk.aiff