#!/bin/bash
INIT=/var/vcap/packages/al_agent/etc/init.d/al-agent
case "$1" in
    start)
            $INIT $1
        ;;
    stop)
            $INIT $1
        ;;
    status)
            $INIT $1
        ;;
    *)
        echo "Option '$1' is not implemented, please use start,stop,status"
        ;;
esac
