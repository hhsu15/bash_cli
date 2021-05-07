#!/usr/bin/env/ bash

PARAMS=""

while (($#)); do
	echo "This 1st arg is ==$1=="
	case "$1" in 
		-e|--email)
			echo "run email script"
			shift
		;;
		-s|--server)
			echo "run server script"
			shift
		;;
		--) # end argument parsing
			shift
			break
		;;
		-*|--*=) # unsupported flags
			echo "Error unsupportede flag $1" >&2
			exit 1
		;;
		*) # preserve position arguments
			PARAMS="$PARAMS $1"
			shift
			;;
	esac
done
eval set -- "$APARAMS"
echo "Arguments provided: $PARAMS"

exit 0
