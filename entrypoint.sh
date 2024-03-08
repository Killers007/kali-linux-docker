#!/bin/bash

# Startup SSH service when container starts
/usr/sbin/sshd

# Set password for VNC
mkdir -p /root/.vnc/
echo $VNCPWD | vncpasswd -f > /root/.vnc/passwd
chmod 600 /root/.vnc/passwd

# Expose VNC
vncserver :0 -rfbport $VNCPORT -geometry $VNCDISPLAY -depth $VNCDEPTH \
> /var/log/vncserver.log 2>&1

/bin/bash
