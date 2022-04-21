#using Webcam with MPV
sudo apt install mpv v4l2loopback-utils

#play video stream
mpv /dev/video0
mpv av://v4l2:/dev/video0

#set resolution
v4l2-ctl --set-fmt-video=width=1920,height=1080
v4l2-ctl --set-fmt-video=width=720,height=480

#the video will only use resolutions that are supported by your camera
#if you put something not supported it will go to the closest supported
#and you can also just give one of the dimensions (exmaple: height)
#and it will get the width
v4l2-ctl --set-fmt-video=width=720
v4l2-ctl --set-fmt-video=width=200