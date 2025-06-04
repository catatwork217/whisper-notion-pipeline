# 🎧 Whisper + Notion Transcription Pipeline

A fully automated local-to-cloud pipeline that converts audio into structured summaries and stores them in Notion. Built for creatives, developers, and anyone managing voice-driven workflows.

## 🧩 Script Overview

| Script | Description |
|--------|-------------|
| `whisper-transcribe.sh` | Transcribes a single audio file using Whisper CLI and logs it |
| `transcribe.sh` | Loops over a directory and calls `whisper-transcribe.sh` on each `.m4a` file |
| `parse_and_send.py` | Summarizes and sends transcript content to Notion |
| `clean-filenames.sh` | Cleans/sanitizes audio file names (optional utility) |

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

## 💬 Future Goals
- Add voice command trigger
- Enable speaker diarization
- Add backup/export to S3

## 🤝 License
Licensed under the GNU General Public License v2.0. See [LICENSE](LICENSE).

## 👩‍💻 Author

Cathrin McDougall  
Certified Scrum Master & Product Owner | DevOps Learner | Creative Automation Builder  
[LinkedIn](https://linkedin.com/in/cathringordonmcdougall) | [GitHub](https://github.com/catatwork217)

Inspired by a passion for storytelling, automation, and elegant systems thinking.
