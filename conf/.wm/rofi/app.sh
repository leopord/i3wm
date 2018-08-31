#!/bin/bash
web="chromium(web browser)"
file="thunar(file manager)"
note="gnote(note taker)"
writer="wps writer"
sheet="wps spreadsheets"
presentation="wps presentation"
pdf="foxitreader(pdf reader)"
music="quod libet(muser player)"
book="bookworm(ebook reader)"
downloader="uget(file downloader)"
dict="stardict(dictionary)"
email="thunderbird(email reader)"
imgeditor="gimp(image editor)"
remote="remmina(remote desktop)"
ftp="gftp(ftp client)"
vm="virtualbox"
color="gcolor2(color picker)"
webcam="cheese(webcam booth)"
nmap="zenmap(port scanner)"
analyzer="wireshark(network analyzer)"
other="more rofi"
action=$(echo -e "$web\n$file\n$note\n$writer\n$sheet\n$presentation\n$pdf\n$music\n$book\n$downloader\n$dict\n$email\n$imgeditor\n$remote\n$ftp\n$vm\n$color\n$webcam\n$nmap\n$analyzer\n$other" | rofi -dmenu -p "run")

if [[ "$action" == "$web" ]]
then 
	chromium
fi

if [[ "$action" == "$file" ]]
then 
	thunar
fi

if [[ "$action" == "$note" ]]
then 
	gnote
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
	foxitreader
fi

if [[ "$action" == "$music" ]]
then 
	quodlibet
fi

if [[ "$action" == "$book" ]]
then 
	bookworm
fi

if [[ "$action" == "$downloader" ]]
then 
	uget-gtk
fi

if [[ "$action" == "$dict" ]]
then 
	stardict
fi

if [[ "$action" == "$email" ]]
then 
	thunderbird
fi

if [[ "$action" == "$imgeditor" ]]
then 
	gimp
fi

if [[ "$action" == "$remote" ]]
then 
	remmina
fi

if [[ "$action" == "$ftp" ]]
then 
	gftp
fi

if [[ "$action" == "$vm" ]]
then 
	virtualbox
fi

if [[ "$action" == "$color" ]]
then 
	gcolor2
fi

if [[ "$action" == "$webcam" ]]
then 
	cheese
fi

if [[ "$action" == "$nmap" ]]
then zenmap fi

if [[ "$action" == "$analyzer" ]]
then 
	wireshark-gtk
fi

if [[ "$action" == "$other" ]]
then 
	rofi -show run
fi
