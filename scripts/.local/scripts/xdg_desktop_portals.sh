#!/usr/bin/env bash
sleep 1
systemctl restart --user xdg-desktop-portal-hyprland.service
sleep 1
systemctl stop --user xdg-desktop-portal-gtk.service
sleep 3
systemctl restart --user xdg-desktop-portal.service
# killall xdg-desktop-portal-hyprland
# killall xdg-desktop-portal
# killall -e xdg-desktop-portal-gtk
# /usr/libexec/xdg-desktop-portal-hyprland &
# sleep 4
# /usr/libexec/xdg-desktop-portal &
# sleep 4
# /usr/libexec/xdg-desktop-portal-gtk &
