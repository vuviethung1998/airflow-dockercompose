FROM puckel/docker-airflow:1.10.6
LABEL maintainer="vuviethung"

ARG AIRFLOW_USER_HOME=/usr/local/airflow
ENV AIRFLOW_HOME=${AIRFLOW_USER_HOME}

COPY ./config/airflow.cfg /usr/local/airflow/airflow.cfg

COPY requirements.txt /tmp
WORKDIR /tmp

RUN  pip install --user -r requirements.txt