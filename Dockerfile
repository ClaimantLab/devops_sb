FROM python:3-alpine

WORKDIR /flaskex

COPY ./requirements.txt /flaskex
RUN pip install -r requirements.txt

COPY . /flaskex

EXPOSE 8000
CMD python app.py runserver 0.0.0.0:8000