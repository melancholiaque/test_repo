FROM python:3.7.2

WORKDIR /opt/app

RUN pip3 install pipenv
RUN python3.7 -V
RUN ls
RUN pipenv install

EXPOSE 8000

CMD ["python3.7", "manage.py", "8000"]