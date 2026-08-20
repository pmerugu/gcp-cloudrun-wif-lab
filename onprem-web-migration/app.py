from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def home():
    return {
        "application": "Employee Portal",
        "environment": os.getenv("ENVIRONMENT", "on-prem"),
        "message": "Hello from the migrated application!"
    }

if __name__ == "__main__":
    app.run(
        host="0.0.0.0",
        port=int(os.getenv("PORT", 8080))
    )