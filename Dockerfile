FROM python:3.7.2

WORKDIR /app
COPY . /app

RUN apt-get -y update
RUN apt-get -y install python-opencv

RUN pip3 install --upgrade pip
RUN pip3 install pipenv
RUN pipenv install
RUN pipenv run pip freeze > requirements.txt
RUN pip3 install -r requirements.txt

RUN pip install psycopg2-binary

CMD python manage.py run
