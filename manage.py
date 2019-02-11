from app import app
from os import environ, argv

if argv[1] == 'run': 
    app.run(host='0.0.0.0', port=environ['PORT'])