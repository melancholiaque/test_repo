FROM python:3.7.2

WORKDIR /test
COPY . /stella

RUN pip install pipenv && \
    pipenv install

EXPOSE 8000

CMD ["python3.7", "manage.py", "8000"]