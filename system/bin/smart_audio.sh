#!/system/bin/sh
prop="2"
prop=`getprop persist.radio.change.speaker`
if [ "$prop" == "1" ]; then
climax --resetMtpEx
setprop persist.radio.change.speaker pass
else if [ "$prop" != "pass" ]; then
setprop persist.radio.change.speaker nocalibration
fi
fi
