# 🎧 Whisper + Notion Transcription Pipeline

A fully automated local-to-cloud pipeline that converts audio into structured summaries and stores them in Notion. Built for creatives, developers, and anyone managing voice-driven workflows.

## 🔧 Tech Stack
- Bash + cron jobs
- Whisper CLI (OpenAI)
- Python (API calls, JSON parsing)
- GPT API (Prompt engineering)
- Notion API (structured knowledge capture)

## 🧠 Features
- Converts audio to text using Whisper CLI
- Applies GPT-based summaries and metadata
- Automatically pushes content to Notion
- Modular, extensible, and lightweight

## 🖼️ Pipeline Diagram
See [pipeline/WhisperToNotionPipeline_colored.puml](pipeline/WhisperToNotionPipeline_colored.puml)  
Also includes rendered PNG: `pipeline/WhisperToNotionPipeline.png`

## 🏁 Usage
1. Save audio files to `~/Whispersync/`
2. Run `scripts/transcribe.sh`
3. Execute `scripts/parse_and_send.py` to send content to Notion

## 💬 Future Goals
- Add voice command trigger
- Enable speaker diarization
- Add backup/export to S3

## 🤝 License
Licensed under the GNU General Public License v2.0. See [LICENSE](LICENSE).
