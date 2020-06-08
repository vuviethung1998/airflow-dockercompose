FROM python:3.6-alpine
USER root   
 
RUN useradd -ms /bin/bash vuviethung

USER user
WORKDIR /home/vuviethung
RUN mkdir -p /home/vuviethung/airflow

ENV AIRFLOW_HOME=/home/vuviethung/airflow

RUN pip install --user psycopg2-binary
RUN pip install --user flask-bcrypt

COPY ./config/airflow.cfg /home/vuviethung/airflow/airflow.cfg
