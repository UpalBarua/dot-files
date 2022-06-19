#!/bin/sh

# add more args here according to preference
ARGS="--volume=60"

notification(){
# change the icon to whatever you want. Make sure your notification server 
# supports it and already configured.

# Now it will receive argument so the user can rename the radio title
# to whatever they want

	notify-send "Playing now " "$@" 
	# --icon=media-tape
}

menu(){
	printf "1. Coding Session\n"
	printf "2. Study Session\n"
	printf "3. Chillhop\n"
	printf "4. Box Lofi\n"
	printf "5. The Bootleg Boy\n"
	printf "6. DhakaFM 90.4\n"
	printf "7. ABC Radio 89.2"
}

main() {
	choice=$(menu | rofi -dmenu -p "Search" | cut -d. -f1)

	case $choice in
		1)
			notification "Coding Session";
            URL="$HOME/Music/coding-session.mp3"
			break
			;;
		2)
			notification "Study Session";
            URL="$HOME/Music/study-session.m4a"
			break
			;;
		3)
			notification "Chillhop ☕️🎶";
            URL="http://stream.zeno.fm/fyn8eh3h5f8uv"
			break
			;;
		4)
			notification "Box Lofi ☕️🎶";
            URL="http://stream.zeno.fm/f3wvbbqmdg8uv"
			break
			;;
		5)
			notification "Shomoy News";
            URL="http://stream.zeno.fm/0r0xa792kwzuv"
			break
			;;
		6)
			notification "DhakaFM 90.4";
            URL="http://dhakafm904.com/"
			break
			;;
		7)
			notification "ABC Radio 89.2";
            URL="https://www.abcradio.fm/"
			break
			;;
	esac
    # run mpv with args and selected url
    # added title arg to make sure the pkill command kills only this instance of mpv
    mpv $ARGS --title="radio-mpv" $URL --no-video
}

pkill -f radio-mpv || main
