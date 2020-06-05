from __future__ import print_function
from airflow import models, settings
from airflow.contrib.auth.backends.password_auth import PasswordUser

user = PasswordUser(models.User())
user.username = "yenhv1"
user.email = "a@gmail.com"
user.password = "yenhv"
session = settings.Session()
session.add(user)
try:
    session.commit()
except:
    print("User already exists.")
session.close()
exit()