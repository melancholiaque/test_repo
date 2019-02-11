FROM python:3.7.2

WORKDIR /app
COPY . /app

RUN pip3 install pipenv
RUN pipenv install
RUN pipenv graph

EXPOSE 8000

CMD ["python", "manage.py"]