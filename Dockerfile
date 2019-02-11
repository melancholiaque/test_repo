FROM python:3.7.2

RUN pip3 install pipenv
RUN apt-get

EXPOSE 8000

CMD ["python3.7", "manage.py", "8000"]