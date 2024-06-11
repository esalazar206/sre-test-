FROM python:3.12.4-alpine
WORKDIR /Python

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
ENV FLASK_APP=test.py
COPY . .
CMD ["gunicorn"  , "-b", "0.0.0.0:8888", "app:app"]
EXPOSE 8888
