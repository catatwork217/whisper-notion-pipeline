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
| `repair_db_for_transcripts.py`   | **Standalone** on-demand utility to repair or rebuild your transcript DB from existing transcript files (for bulk recovery, troubleshooting, or advanced workflows) |

> **Note:** The original bash scripts (`whisper-transcribe.sh`, `clean-filenames.sh`, `whisper_transcript_log.sh`) represent earlier iterations of this pipeline and are preserved for reference, reproducibility, and modular use.  
> The current all-in-one workflow is **`watch_and_transcribe.py`**, while advanced users can run **`repair_db_for_transcripts.py`** to rebuild DB records on demand.

---

#### As reviewed in **[@techandtangents** Ep 1. https://youtu.be/u_J2370AD6A?si=esKll_jWLaKxCAnu](https://www.youtube.com/@techandtangents)**
> See the demo walkthrough for a live, end-to-end look at these scripts in action, including filename cleaning and logging enhancements.

---

## 🚀 Features

- Modular: use bash scripts individually or together for simple CLI workflows (pipeline v1/v2).
- **Main pipeline:** Run `watch_and_transcribe.py` to clean filenames, batch transcribe, log, and store everything in a local SQLite database—**including integrated DB repair**.
- **Advanced:** Use `repair_db_for_transcripts.py` anytime to rebuild/restore your database in bulk—especially useful after manual transcript edits or system migrations.
- Robust logging for audit and troubleshooting.
- Easy to use, lightweight, and extensible for future features (like Notion/GPT integration).

---

## 🏁 Usage

1. Place your `.m4a` files in the `raw_audio/` directory.
2. *(Optional but recommended)* Run `clean-filenames.sh` to sanitize filenames.
3. Run the main pipeline:  
   `python scripts/watch_and_transcribe.py`
4. Review logs with `whisper_transcript_log.sh` as needed.
5. **On-demand:** Run `python scripts/repair_db_for_transcripts.py` to bulk repair or restore DB entries for transcripts.

> **Note:** As of this release, all transcripts and metadata are stored locally in SQLite. **Notion and GPT integration are under active development.**

---

## 🆕 What’s New

- **DB Repair:** Both integrated (in `watch_and_transcribe.py`) and standalone (`repair_db_for_transcripts.py`) ways to recover your transcript DB, making it easier to fix or sync after manual edits.
- Preserved earlier scripts for reproducibility and educational purposes—see “Pipeline Evolution” below.

---

## 🛤️ Pipeline Evolution

- **v1:** Bash script workflow for simple, single-file and batch transcription.
- **v2:** Logging, filename cleaning, modular CLI utilities.
- **v3:** Python all-in-one pipeline with integrated DB repair and full metadata tracking.

---

**Demo’d in [Tech & Tangents Ep. 1](https://youtu.be/u_J2370AD6A?si=IFrg-7mquUNktkTD)**  
*Next post and video: REST API integration with GPT & Notion!*

---

## 🖼️ Pipeline Diagram

See [pipeline/WhisperToNotionPipeline_colored.puml](pipeline/WhisperToNotionPipeline_colored.puml)  
Also includes rendered PNG: `pipeline/WhisperToNotionPipeline.png`

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
Certified Scrum Master & Product Owner | DevOps Learner | Creative Automation Builder  
[LinkedIn](https://linkedin.com/in/cathringordonmcdougall) | [GitHub](https://github.com/catatwork217)

Inspired by a passion for storytelling, automation, and elegant systems thinking.
