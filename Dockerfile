FROM python:3.7.2

WORKDIR /app
COPY . /app

RUN pip3 install --upgrade pip
RUN pip3 install pipenv
RUN pipenv install
RUN pipenv run pip freeze > requirements.txt

CMD ["pipenv", "run", "python", "manage.py"]