FROM python:3.7.2

WORKDIR /app
COPY . /app

RUN pip3 install --upgrade pip
RUN pip3 install pipenv
RUN pipenv install
RUN pipenv graph

EXPOSE 8000

CMD cd /app && pipenv run python manage.py 8000