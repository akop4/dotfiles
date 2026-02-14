#!/bin/bash

#https://martinh.net/hacks/hyprland-longcat/

#notif="$HOME/.config/swaync/images/ja.png"

monitor-sensor --accel 2>/dev/null | while read -r LINE; do
  ROT=${LINE#*: }
  case "$ROT" in
    "normal")
      #hyprshade on retromod.glsl
      #hyprctl keyword monitor eDP-1,preferred,3082x0,1.5,transform,2
      swaymsg "output eDP-1 transform normal"
      # swaymsg "input 1386:21256:Wacom_HID_5308_Pen rotation_angle 0.0"
      # swaymsg "input type:touchpad rotation_angle 0"
      #hyprctl keyword monitor eDP-2,preferred,3082x1200,1.5,transform,0
      #hyprshade off
      #notify-send -e -u low -i "$notif" " Supine Position"
      # notify-send -e -u low "Supine Position"
      ;;
    "left-up")
      #hyprshade on retromod.glsl
      #hyprctl keyword monitor eDP-1,preferred,left,1.5,transform,3
      swaymsg "output eDP-1 transform 270"
      # swaymsg "input type:touchpad rotation_angle 270"
      #hyprctl keyword monitor eDP-2,preferred,right,1.5,transform,1
      #hyprshade off
      #notify-send -e -u low -i "$notif" " Sinistral Vector"
      # notify-send -e -u low "Sinistral Vector"
      ;;
    "right-up")
      #hyprshade on retromod.glsl
      #hyprctl keyword monitor eDP-1,preferred,left,1.5,transform,1
      swaymsg "output eDP-1 transform 90"
      # swaymsg "input type:touchpad rotation_angle 90"
      #hyprctl keyword monitor eDP-2,preferred,right,1.5,transform,3
      #hyprshade off
      #notify-send -e -u low -i "$notif" " Conduire à Droite"
      # notify-send -e -u low "Conduire à Droite"
      ;;
    "bottom-up")
      #hyprshade on retromod.glsl
      #hyprctl keyword monitor eDP-1,preferred,3082x0,1.5,transform,0
      swaymsg "output eDP-1 transform 180"
      # swaymsg "input type:touchpad rotation_angle 180"
      #hyprctl keyword monitor eDP-2,preferred,3082x1200,1.5,transform,2
      #hyprshade off
      #notify-send -e -u low -i "$notif" " Bottoms Up!"
      # notify-send -e -u low "Bottoms Up!"
      ;;
    *)
      # we'll ignore anything else
      ;;
  esac
done
