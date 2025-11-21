# 🎧 Whisper + Notion Transcription Pipeline

A fully automated local-to-cloud pipeline that converts audio into structured summaries and stores them in a local SQLite database. 
**Built for creatives, developers, and anyone managing voice-driven workflows.**

---

## 🧩 Script Overview

| Script                          | Description                                                                                         |
|----------------------------------|-----------------------------------------------------------------------------------------------------|
| `whisper-transcribe.sh`          | Transcribes a single audio file using Whisper CLI (pipeline v1; standalone or building block)        |
| `clean-filenames.sh`             | Cleans audio file names for safety (pipeline v1–v2; standalone or utility)                          |
| `whisper_transcript_log.sh`      | Logs transcription events with status, timestamp, and filename for auditability                     |
| `watch_and_transcribe.py`        | Full pipeline (v3): cleans filenames, batch transcribes, extracts keywords, counts word length, logs, stores in SQLite, includes built-in DB repair utility |
| `repair_transcript_db.py`   | **Standalone** on-demand utility to repair or rebuild your transcript DB from existing transcript files (for bulk recovery, troubleshooting, or advanced workflows) |

> **Note:** The original bash scripts (`whisper-transcribe.sh`, `clean-filenames.sh`, `whisper_transcript_log.sh`) represent earlier iterations of this pipeline and are preserved for reference, reproducibility, and modular use.  
> The current all-in-one workflow is **`watch_and_transcribe.py`**, while advanced users can run **`repair_transcript_db.py`** to rebuild DB records on demand.

---

#### Demo available at [https://www.cathrinmcdougall.com](https://www.cathrinmcdougall.com/ai-automation/whisper-pipeline)

---

## 🚀 Features

- Modular: use bash scripts individually or together for simple CLI workflows (pipeline v1/v2).
- **Main pipeline:** Run `watch_and_transcribe.py` to clean filenames, batch transcribe, log, and store everything in a local SQLite database—**including integrated DB repair**.
- **Advanced:** Use `repair_db_for_transcripts.py` anytime to rebuild/restore your database in bulk—especially useful after manual transcript edits or system migrations.
- Robust logging for audit and troubleshooting.
- Easy to use, lightweight, and extensible for future features (like Notion/GPT integration).

---

## 🏁 Usage

1. From the terminal in your code editor (I use VS Code) make sure you are in the right dir.
2. Enter "python watch_and_transcribe.py"
3. clean-filenames.sh runs any existing files that need filenames updated. Script will ask you if you would like to transcribe another file. Either add the file ahead of time to 'dirty_audio/' or start the script and wait for it to ask you to add a file.
4. Move or copy your `.m4a` files in the `dirty_audio/` directory using the terminal or file explorer.
5. Return to terminal and hit [ENTER].
6. Pipeline will run, automatically transcribing the audio file or files you added to the dirty_audio/ dir.
7. Pipeline will messages to tell you what it is doing. Success or completion message is "Transcription complete and saved: [dir]." "Metadata written to db with tags []." "Your new database entry awaits your inspection!"
8. When ready to exit you may enter 'N' when the system asks "Would you like to process another file? (y/n)"
9. Exit message appears "See ya next time! Goodbye!"
10. **On-demand:** Run `python scripts/repair_transcript_db.py` to bulk repair or restore DB entries for transcripts.

> **Note:** As of this release, all transcripts and metadata are stored locally in SQLite. **Notion and GPT integration are under active development.**

---

## 🆕 What’s New

- **DB Repair:** Both integrated (in `watch_and_transcribe.py`) and standalone (`repair_transcript_db.py`) ways to recover your transcript DB, making it easier to fix or sync after manual edits.
- Preserved earlier scripts for reproducibility and educational purposes—see “Pipeline Evolution” below.

---

## 🛤️ Pipeline Evolution

- **v1:** Bash script workflow for simple, single-file and batch transcription.
- **v2:** Logging, filename cleaning, modular CLI utilities.
- **v3:** Python all-in-one pipeline with integrated DB repair and full metadata tracking.

---

---

## 🖼️ Pipeline Diagram

See [pipeline/AutomationPipeline.png](pipeline/AutomationPipeline.png) 

---

## Examples
**Included in the [Examples/](Examples/) are sample files to show what the outputs will look like in all formats: .txt, .tsv, .vtt, .srt, json.**
- JSON - for integration with REST APIs
- SRT/VTT - Different accessibility captions file formats.
- TXT - Regular text file format for import or conversion to any word processing format needed.
- TSV - Organizes the transcript into a tabular format for easy editing and continued work in spreadsheet or as a database export. 

---

## 🚧 TODO / In Progress

🛠️ The following enhancements are in progress:
- 🔄 GPT-based summarization using OpenAI API
- 🧠 Integration with Notion API for dynamic content ingestion

Check back for v2 updates, or contribute via pull request if you'd like to help accelerate!

---

## ❗ Current Limitations

- No Notion export or GPT-based summarization yet (coming soon)
- Only `.m4a` audio supported in current workflows
- DB is SQLite. If you would like to integrate a different db, please fork and update the 'watch_and_transcribe.py' script.
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
Certified Scrum Master & Product Owner 
[Prof Website](https://www.cathrinmcdougall.com/) | [GitHub](https://github.com/catatwork217)

Inspired by a passion for storytelling, automation, and elegant systems thinking.
