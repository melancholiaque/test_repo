FROM python:3.7.2

WORKDIR /app
COPY . /app

RUN apt-get update
RUN apt-get install tesseract-ocr

RUN pip3 install --upgrade pip
RUN pip3 install pipenv
RUN pipenv install
RUN pipenv run pip freeze > requirements.txt
RUN pip3 install -r requirements.txt

CMD python manage.py run