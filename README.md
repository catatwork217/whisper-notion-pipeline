# Whisper + Notion Transcription Pipeline

## 🧩 Script Overview

| Script | Description |
|--------|-------------|
| `whisper-transcribe.sh` | Transcribes a single audio file using Whisper CLI and logs it |
| `transcribe.sh` | Loops over a directory and calls `whisper-transcribe.sh` on each `.m4a` file |
| `parse_and_send.py` | Summarizes and sends transcript content to Notion |
| `clean-filenames.sh` | Cleans/sanitizes audio file names (optional utility) |


---

## 🚧 TODO / In Progress

The core pipeline infrastructure is complete and fully operational:
- ✅ Bash automation
- ✅ Transcription via Whisper CLI
- ✅ File logging and naming management
- ✅ GitHub-ready structure with script documentation

🛠️ The following enhancements are in progress:
- 🔄 Full GPT-based summarization using OpenAI API
- 🧠 Integration with Notion API for dynamic content ingestion
- 🔐 Secure key handling and `.env` example file
- 🧪 Add dry-run and error handling features to Python script

Check back for v2 updates, or contribute via pull request if you'd like to help accelerate!
