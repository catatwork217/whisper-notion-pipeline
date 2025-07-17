# 🎧 Whisper + Notion Transcription Pipeline

A fully automated local-to-cloud pipeline that converts audio into structured summaries and stores them in a local SQLite database. 
**Built for creatives, developers, and anyone managing voice-driven workflows.**

---

## 🧩 Script Overview

| Script                        | Description                                                                              |
|-------------------------------|------------------------------------------------------------------------------------------|
| `whisper-transcribe.sh`       | Transcribes a single audio file using Whisper CLI and logs it                            |
| `clean-filenames.sh`          | Cleans/sanitizes audio file names (for CLI safety and cross-platform compatibility)      |
| `whisper_transcript_log.sh`   | Logs transcription events with status, timestamp, and filename for auditability          |
| `watch_and_transcribe.py`     | Full Python workflow: batch cleans audio, triggers Whisper, tags, logs, and updates DB   |                   |

#### As reviewed in [Tech & Tangents Ep.1](https://youtu.be/u_J2370AD6A?si=IFrg-7mquUNktkTD)
> See the demo walkthrough for a live, end-to-end look at these scripts in action, including filename cleaning and logging enhancements.

---

## 🧠 Features

- Converts audio to text using Whisper CLI
- Stores transcript metadata and tags in a local SQLite database
- Filename cleaning utility for safety and cross-platform workflows
- Robust logging for audit and troubleshooting
- Modular, extensible, and lightweight
- *(Planned)*: GPT-powered summaries and Notion integration

---

## 🏁 Usage

1. Place your `.m4a` audio files in the `raw_audio/` directory.
2. *(Optional but recommended)* Run `scripts/clean-filenames.sh` to ensure safe filenames.
3. Run the pipeline:
    - For full automation:  
      `python scripts/watch_and_transcribe.py`
    - For single files:  
      `scripts/whisper-transcribe.sh yourfile.m4a`
4. Review logs using `whisper_transcript_log.sh` for detailed audit trails.
5. **(Coming soon):** Send transcripts to Notion using `scripts/parse_and_send.py`.

> **Note:** As of this release, transcripts and metadata are stored locally in SQLite. Notion and GPT integration are under active development.

---

## 🖼️ Pipeline Diagram

See [pipeline/WhisperToNotionPipeline_colored.puml](pipeline/WhisperToNotionPipeline_colored.puml)  
Also includes rendered PNG: `pipeline/WhisperToNotionPipeline.png`

---

## 🚧 TODO / In Progress

The core pipeline infrastructure is complete and fully operational:
- ✅ Bash automation for transcription and file handling
- ✅ Transcription via Whisper CLI
- ✅ File logging and naming management
- ✅ GitHub-ready structure with script documentation
- ✅ Metadata and tag storage in SQLite

🛠️ The following enhancements are in progress:
- 🔄 GPT-based summarization using OpenAI API
- 🧠 Integration with Notion API for dynamic content ingestion
- 🔐 Secure key handling and `.env` example file
- 🧪 Add dry-run and error handling features to Python script

Check back for v2 updates, or contribute via pull request if you'd like to help accelerate!

---

## ❗ Current Limitations

- No Notion export or GPT-based summarization yet (coming soon)
- Only `.m4a` audio supported in current workflows
- All processing and storage is local (no cloud/S3 backup yet)

---

## 💬 Future Goals

- Add voice command trigger
- Enable speaker diarization
- Add backup/export to S3
- Notion/GPT integration

---

## 🤝 License

Licensed under the GNU General Public License v2.0. See [LICENSE](LICENSE).

---

## 👩‍💻 Author

Cathrin McDougall  
Certified Scrum Master & Product Owner | DevOps Learner | Creative Automation Builder  
[LinkedIn](https://linkedin.com/in/cathringordonmcdougall) | [GitHub](https://github.com/catatwork217)

Inspired by a passion for storytelling, automation, and elegant systems thinking.
