FROM python:latest

RUN mkdir -p /app
WORKDIR /app

# Copy app files
COPY requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt
COPY . /app


ARG NAME
ARG FLASK_APP

ENV NAME "KEVIN"
ENV FLASK_APP "main.py" 

CMD flask run