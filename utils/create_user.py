from airflow import models, settings
from airflow.contrib.auth.backends.password_auth import PasswordUser
user = PasswordUser(models.User())
user.username = 'airflow'
user.email = 'airflow@email.com'
user.password = 'airflow'

# the secret sauce is right here
from sqlalchemy import create_engine

if __name__=="__main__":
    engine = create_engine("postgresql://airflow:airflow@localhost:5432/airflow")

    session = settings.Session(bind=engine)
    session.add(user)
    session.commit()
    session.close()
    exit()
