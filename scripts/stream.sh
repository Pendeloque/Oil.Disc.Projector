#!/bin/bash
raspivid -n -t 0 -rot 180 -w 729 -h 720 -fps 30 -b 1000000 -o - | gst-launch-1.0 -e -vvvv fdsrc ! h264parse ! rtph264pay pt=96 config-interval=5 ! udpsink host=192.168.2.109 port=5000
