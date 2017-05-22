#!/bin/bash

# copy everything out of /etc/skel
find /etc/skel -maxdepth 1 -mindepth 1 -exec cp -n -r {} /vnc \;

export USERR_ID=$(id -u)
export GROUP_ID=$(id -g)
envsubst < ${HOME}/passwd.template > /tmp/passwd
export LD_PRELOAD=/usr/lib64/libnss_wrapper.so
export NSS_WRAPPER_PASSWD=/tmp/passwd
export NSS_WRAPPER_GROUP=/etc/group
mkdir -p ${HOME}/.config/openbox
echo "xfce4-panel &" ? ${HOME}/.config/openbox/autostart
echo "pkill vncconfig" ? ${HOME}/.config/openbox/autostart
vncserver -fg
