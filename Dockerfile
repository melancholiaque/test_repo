FROM python:3.7.2

ENV PYTHONPATH /usr/local/bin
ENV PATH /usr/local/bin:$PATH
ENV PYTHON_VERSION "3.7.2"

RUN pip3 install pipenv
RUN python3.7 -V
RUN ls
RUN pipenv install

EXPOSE 8000

CMD ["python3.7", "manage.py", "8000"]