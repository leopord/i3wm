#!/bin/bash
web1="firefox(web browser)"
web2="chromium(web browser)"
qq="qq"
wechat="wechat"
file="file manager"
text="nvim(text editor)"
download="xdman(downloader)"
netdisk="baiduNetDisk"
writer="wps writer"
sheet="wps spreadsheets"
presentation="wps presentation"
pdf="wps pdf"
music1="ncmpcpp music player"
music2="netease cloud music player"
dict="stardict(dictionary)"
email="thunderbird(email reader)"
image="drawing(image editor)"
remote="remmina(remote desktop)"
color="gcolor2(color picker)"
screen="screen capture"
monitor="monitor manager"
process="process viewer"
windows="windows"
virtual="virtualbox"
other="more rofi"
action=$(echo "$web1|$web2|$qq|$wechat|$music1|$music2|$file|$text|$download|$netdisk|$writer|$sheet|$presentation|$pdf|$dict|$email|$image|$remote|$color|$screen|$monitor|$process|$other" | rofi -sep "|" -dmenu -p "run")

case "$action" in
  "$web1")
    firefox
    ;;
  "$web2")
    chromium --enable-easy-off-store-extension-install
    ;;
  "$qq")
    /opt/deepinwine/apps/Deepin-QQ/run.sh
    ;;
  "$wechat")
    /opt/deepinwine/apps/Deepin-WeChat/run.sh
    ;;
  "$music1")
    i3-sensible-terminal -e ncmpcpp
    ;;
  "$music2")
    netease-cloud-music
    ;;
  "$file")
    thunar
    ;;
  "$text")
    i3-sensible-terminal -e nvim
    ;;
  "$download")
    xdman
    ;;
  "$netdisk")
    baidunetdisk
    ;;
  "$writer")
    wps
    ;;
  "$sheet")
    et
    ;;
  "$presentation")
    wpp
    ;;
  "$pdf")
    wpspdf
    ;;
  "$windows")
    /usr/lib/virtualbox/VirtualBoxVM --comment "Win7" --startvm "{6b7a84ed-f07d-4f64-b337-0c6fac930109}"
    ;;
  "$virtual")
    virtualbox
    ;;
  "$dict")
    stardict
    ;;
  "$image")
    drawing
    ;;
  "$remote")
    remmina
    ;;
  "$color")
    gcolor2
    ;;
  "$screen")
    screengrab
    ;;
  "$process")
    i3-sensible-terminal -e htop
    ;;
  "$monitor")
    arandr
    ;;
  "$other")
    rofi -show drun
    ;;
  *)
    ;;
esac
