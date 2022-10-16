#! /bin/sh
# From Mastering Emebdded Linux Programming
case "$1" in 
    start) 
        echo "Start LDD module" 
        /usr/bin/scull_load
        /usr/bin/module_load faulty
        modprobe hello
        ;; 
    stop) 
        echo "Stop LDD module" 
        /usr/bin/scull_unload
        /usr/bin/module_unload faulty
        rmmod hello
        ;; 
    *) 
        echo "Usage: $0 {start|stop}" 
    exit 1 
esac 

exit 0 
