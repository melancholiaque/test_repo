FROM python:3.7.2

WORKDIR /app
COPY . /app

RUN uname -a

RUN apt-get install tesseract-ocr
RUN apt-get install python-opencv
RUN cat /etc/lsb_release

RUN pip3 install --upgrade pip
RUN pip3 install pipenv
RUN pipenv install
RUN pipenv run pip freeze > requirements.txt
RUN pip3 install -r requirements.txt

CMD python manage.py run