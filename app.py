from flask import Flask
app = Flask(__name__)
from os import environ

@app.route("/")
def hello():
    return f'{environ["DROPBOX"]}'
