FROM python:3.7.2

RUN pip install pipenv

EXPOSE 8000

CMD ["python3.7", "manage.py", "8000"]