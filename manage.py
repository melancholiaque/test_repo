from app import app
from os import environ

app.run(host='0.0.0.0', port=environ['PORT'])