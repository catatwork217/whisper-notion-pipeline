#!/bin/bash

echo "Saving transcripts to file and creating log of transcript activity..."

# Log it
STAMP=$(date '+%Y-%m-%d %H:%M:%S')
FILENAME=$(basename "$AUDIO_FILE")
echo "[$STAMP] Transcribed: $FILENAME → $OUTDIR/${FILENAME%.*}.txt" >> "$LOGFILE"

echo "Transcript saved + logged."
