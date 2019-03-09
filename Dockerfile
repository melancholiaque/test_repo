FROM python:3.7.2

WORKDIR /app
COPY . /app

RUN apt-get -y update

RUN pip3 install -r requirements.txt

CMD python manage.py run
