# pull the official base image
FROM python:3.9-slim

# set work directory

WORKDIR /code


# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1
ADD ./requirements.txt /app/requirements.txt
# install dependencies
RUN pip install --upgrade pip 
# COPY /requirements.txt
RUN pip install -r /app/requirements.txt

# copy project
# COPY . /usr/src/app

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
