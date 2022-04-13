# OUTPUT=$(swaymsg -t get_outputs)

# Get sway outputs
OUTPUT=$(swaymsg -t get_outputs | awk '$1 ~ /name/ {print substr( $2, 2, length($2)-3 )}')
VIDEO=DP-3

if [[ "$OUTPUT" == *"$VIDEO"* ]]; then
	echo "DP3 found!"
else
	# echo $OUTPUT " OHNO!!!"
	echo "Nope..."
fi
