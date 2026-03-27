from flask import Flask
import os
import time

app = Flask(__name__)

@app.route("/")
def index():
    return {"status": "ok", "message": "service healthy"}

@app.route("/health")
def health():
    return {"healthy": True}

@app.route("/slow")
def slow():
    delay = int(os.getenv("SLOW_DELAY_SECONDS", "5"))
    time.sleep(delay)
    return {"status": "slow", "delay_seconds": delay}

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
