FROM python:3.7.2

WORKDIR /app

RUN pip3 install pipenv
RUN python3.7 -V
RUN pwd
RUN ls /
RUN ls opt
RUN pipenv install

EXPOSE 8000

CMD ["python3.7", "manage.py", "8000"]