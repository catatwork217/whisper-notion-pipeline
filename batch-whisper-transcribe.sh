#!/bin/bash
# whisper-transcribe.sh
# Bash script to transcribe a single audio file using Whisper CLI and log the output

AUDIO_FILE="$1"
MODEL="medium"
OUTDIR="$HOME/whisper_pipeline/transcripts"
LOGFILE="$HOME/whisper_pipeline/transcript-log.txt"

# Check if input file is provided and exists
if [ ! -f "$AUDIO_FILE" ]; then
    echo "❌ Error: Audio file not found: $AUDIO_FILE"
    exit 1
fi

# Ensure output directory exists
mkdir -p "$OUTDIR"

# Run Whisper CLI (ensure it's in PATH or use full path to binary)
/usr/local/bin/whisper "$AUDIO_FILE" \
    --model "$MODEL" \
    --language English \
    --output_dir "$OUTDIR" \
    --output_format txt \
    --verbose False

# Log the transcription
STAMP=$(date '+%Y-%m-%d %H:%M:%S')
FILENAME=$(basename "$AUDIO_FILE")
echo "[$STAMP] Transcribed: $FILENAME → $OUTDIR/${FILENAME%.*}.txt" >> "$LOGFILE"

echo "✅ Transcript saved and logged successfully."
