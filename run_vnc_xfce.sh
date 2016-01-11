#!/usr/bin/env bash
vncserver :1 > /dev/null 2>&1 
xfce4-session --display :1 > /dev/null 2>&1