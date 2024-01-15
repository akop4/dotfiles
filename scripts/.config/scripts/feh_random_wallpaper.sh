# !/usr/bin/bash
# Thanks null user from arch forum
# https://bbs.archlinux.org/viewtopic.php?pid=1626816#p1626816

while true; do
  feh --randomize --no-fehbg --bg-fill $1/*
  sleep $2
done
