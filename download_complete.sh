#!/bin/sh
downloadDone=~/.aria2downloads/aria2done
echo "Called with [$1] [$2] [$3]"
mv "$3" "$downloadDone"
rm -f "$3".aria2
