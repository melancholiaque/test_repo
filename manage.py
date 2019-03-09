from app import app
from os import environ
from sys import argv

print(argv)
if argv[1] == 'run': 
    app.run(host='0.0.0.0', port=8080)
