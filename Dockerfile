FROM python:3.7.2

WORKDIR /app
COPY . /app

RUN pip3 install pipenv
RUN pipenv install

EXPOSE 8000

CMD ["pipenv", "run", "python", "/app/manage.py", "8000"]