#!/bin/bash
web1="firefox(web browser)"
web2="chromium(web browser)"
file="file manager"
text="nvim(text editor)"
download="xdman(downloader)"
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
action=$(echo "$web1|$web2|$music1|$music2|$file|$text|$download|$writer|$sheet|$presentation|$pdf|$windows|$virtual|$dict|$email|$image|$remote|$color|$screen|$monitor|$process|$other" | rofi -sep "|" -dmenu -p "run")

if [[ "$action" == "$web1" ]]
then
  firefox
fi

if [[ "$action" == "$web2" ]]
then
  chromium --enable-easy-off-store-extension-install
fi

if [[ "$action" == "$music1" ]]
then
  i3-sensible-terminal -e ncmpcpp
fi

if [[ "$action" == "$music2" ]]
then
  netease-cloud-music
fi

if [[ "$action" == "$file" ]]
then
  thunar
fi

if [[ "$action" == "$text" ]]
then
  i3-sensible-terminal -e nvim
fi

if [[ "$action" == "$downloader" ]]
then
  xdman
fi

if [[ "$action" == "$writer" ]]
then
  wps
fi

if [[ "$action" == "$sheet" ]]
then
  et
fi

if [[ "$action" == "$presentation" ]]
then
  wpp
fi

if [[ "$action" == "$pdf" ]]
then
  wpspdf
fi

if [[ "$action" == "$windows" ]]
then
  /usr/lib/virtualbox/VirtualBoxVM --comment "Win7" --startvm "{6b7a84ed-f07d-4f64-b337-0c6fac930109}"
fi

if [[ "$action" == "$virtual" ]]
then
  virtualbox
fi

if [[ "$action" == "$dict" ]]
then
  stardict
fi

if [[ "$action" == "$email" ]]
then
  thunderbird
fi

if [[ "$action" == "$image" ]]
then
  drawing
fi

if [[ "$action" == "$remote" ]]
then
  remmina
fi

if [[ "$action" == "$vm" ]]
then
  virtualbox
fi

if [[ "$action" == "$color" ]]
then
  gcolor2
fi

if [[ "$action" == "$screen" ]]
then
  screengrab
fi

if [[ "$action" == "$process" ]]
then
  i3-sensible-terminal -e htop
fi

if [[ "$action" == "$monitor" ]]
then
  arandr
fi

if [[ "$action" == "$other" ]]
then
  rofi -show drun
fi
