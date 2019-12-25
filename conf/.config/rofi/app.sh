#!/bin/bash
web1="firefox(web browser)"
web2="chromium(web browser)"
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
power="power manager"
process="process viewer"
other="more rofi"
action=$(echo -e "$web1\n$web2\n$music1\n$music2\n$writer\n$sheet\n$presentation\n$pdf\n$dict\n$email\n$image\n$remote\n$color\n$screen\n$monitor\n$power\n$process\n$other" | rofi -dmenu -p "run")

if [[ "$action" == "$web1" ]]
then 
	firefox
fi

if [[ "$action" == "$web2" ]]
then 
	chromium
fi

if [[ "$action" == "$music1" ]]
then 
	i3-sensible-terminal -e ncmpcpp
fi

if [[ "$action" == "$music2" ]]
then 
	netease-cloud-music
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

if [[ "$action" == "$power" ]]
then 
	mate-power-preferences
fi

if [[ "$action" == "$other" ]]
then 
	rofi -show drun
fi
