# !/usr/bin/bash
# Thanks null user from arch forum
# https://bbs.archlinux.org/viewtopic.php?pid=1626816#p1626816

while true; do
  swaybg -i "$(find ~/Pictures/Wallpapers/ -type f | shuf -n 1)" -m center -c 1a1b26
  sleep 6
done
