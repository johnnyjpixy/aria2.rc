#!/bin/sh
# In fact , if your aria2.conf file setup the rpc etc. Then just run:
# aria2c --conf-path=<path> -D
# Just in case, run:

aria2_conf_file=$1
# echo $aria2_conf_file

if [ ! -n "$1" ] ;then
    echo "You did not specify aria2 conf file. so aria2 will use ~/.aria2/aria2.conf by default."
    aria2_conf_file=~/.aria2/aria2.conf
else
    echo "You have specify aria2 conf file $1, will use it."
fi

aria2c --conf-path=$aria2_conf_file –enable-rpc –rpc-listen-all=true –rpc-allow-origin-all -c -D
