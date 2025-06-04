# parse_and_send.py - Parses Whisper output and sends to Notion

import json
import requests

def summarize_text(text):
    # Replace with actual GPT API call
    return "Summary of: " + text[:100]

def send_to_notion(summary, transcript):
    print("Sending to Notion...")
    # Replace with actual Notion API call
    pass

with open("examples/sample_output.json") as f:
    data = json.load(f)

transcript = data.get("text", "")
summary = summarize_text(transcript)
send_to_notion(summary, transcript)
