#!/usr/bin/env bash

# Script takes two parameters - the name of your favourite pokemon and a file to search for it inside


FAVE_POKEMON=$1
INPUT_FILENAME=$2
OUTPUT_FILENAME=$1_file.csv


get_pokemon_details() {
	echo grep -i $FAVE_POKEMON $INPUT_FILENAME
}


save_pokemon_details() {
	$(get_pokemon_details) > $OUTPUT_FILENAME
}

echo ""
echo "Your favourite pokemon is: $FAVE_POKEMON"
echo ""
 
echo "These are their details:"
echo ""
$(get_pokemon_details)
echo ""
echo "I'll just save that for you in here: $OUTPUT_FILENAME"
						
$(save_pokemon_details)
echo ""
echo "Use the command 'cat $OUTPUT_FILENAME' to view the file"
echo ""

