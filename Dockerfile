FROM puckel/docker-airflow:latest
RUN pip install --user psycopg2-binary
RUN pip install --user flask-bcrypt
ENV AIRFLOW_HOME=/usr/local/airflow

COPY ./config/airflow.cfg /usr/local/airflow/airflow.cfg
