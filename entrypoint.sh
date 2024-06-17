#!/bin/sh

if [ -f /oss-emulator/init.sh ]; then
    /bin/sh /oss-emulator/init.sh
fi

ruby /oss-emulator/bin/emulator -r store -p 8880 &
APP_PID=$!

if [ -f /oss-emulator/ready.sh ]; then
    /bin/sh /oss-emulator/ready.sh
fi

wait $APP_PID
