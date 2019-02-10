from app import app
from sys import argv

app.run(host='0.0.0.0', port=argv[1])
