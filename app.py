from flask import Flask
app = Flask(__name__)
from os import environ
import cv2
import pytesseract

@app.route("/")
def hello():
    return f'{environ["DROPBOX"]}'
