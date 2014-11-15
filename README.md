icedemo-android
===============

从pjsip项目里提取的icedemo,配合https://code.google.com/p/coturn/ STUN/TURN 服务端使用

###如何编译
ndk-build
###如何运行
将libs\armeabi-v7a\icedemo 通过adb push到 /data/local/tmp下

adb shell 后进入/data/local/tmp 为icedemo增加执行权限