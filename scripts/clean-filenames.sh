#!/bin/bash

INPUT="$1"
echo "🎧 Cleaning filenames for CLI safety..."

if [ ! -e "$INPUT" ]; then
    echo "❌ Error: Path does not exist: $INPUT"
    exit 1
fi

# Handle a single file
if [ -f "$INPUT" ]; then
    DIR=$(dirname "$INPUT")
    FILE=$(basename "$INPUT")
    CLEANED=$(echo "$FILE" | tr ' ' '_' | tr -d '"\'\!')

    if [ "$FILE" != "$CLEANED" ]; then
        mv "$DIR/$FILE" "$DIR/$CLEANED"
        echo "✅ Renamed: $FILE → $CLEANED"
    else
        echo "ℹ️ No cleanup needed: $FILE"
    fi

# Handle a folder
elif [ -d "$INPUT" ]; then
    cd "$INPUT" || exit 1
    for FILE in *; do
	CLEANED=$(echo "$FILE" | tr ' ' '_' | tr -d '"!'\''\\')
	if [ "$FILE" != "$CLEANED" ]; then
            mv "$FILE" "$CLEANED"
            echo "✅ Renamed: $FILE → $CLEANED"
        fi
    done
else
    echo "❌ Not a valid file or directory."
    exit 1
fi

