#!/bin/sh

# default: WxH (4:3) = 320x240, bitrate: -b 800k 
# higher resolution test (4:3)
# - 640x480, 1600k  --> ok
# - 640x480, 3200k  --> ok, little lagging
/home/root/bin/ffmpeg/ffmpeg -s 640x480 -f video4linux2 -i /dev/video0 -f mpeg1video \
-b 3200k -r 30 http://127.0.0.1:8082