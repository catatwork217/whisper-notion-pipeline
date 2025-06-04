#!/bin/bash
# transcribe.sh - Run Whisper CLI on all .m4a files in the folder

for file in ~/Whispersync/*.m4a; do
  echo "Transcribing $file..."
  whisper "$file" --model medium --output_format txt
done
