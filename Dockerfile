FROM python:3.7.2

WORKDIR /app
COPY . /app

RUN uname -a
RUN ls /etc | grep -i release
RUN cat /proc/version
RUN cat /etc/issue
RUN cat /etc/os-release
RUN apt-get

RUN pip3 install --upgrade pip
RUN pip3 install pipenv
RUN pipenv install
RUN pipenv run pip freeze > requirements.txt
RUN pip3 install -r requirements.txt

CMD python manage.py run