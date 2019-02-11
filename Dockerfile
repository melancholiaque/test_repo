FROM python:3.7.2

RUN pip3 install pipenv
RUN pipenv install
RUN pipenv graph

EXPOSE 8000

CMD pipenv run python manage.py 8000