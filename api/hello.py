from flask import Flask
from flask.json import jsonify
app = Flask(__name__)

@app.route("/api/")
def hello():
    return jsonify({'msg': 'Hello world from Flask API!'})
