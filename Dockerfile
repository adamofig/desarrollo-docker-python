FROM python:3.8.4-slim-buster
COPY . usr/src/app
WORKDIR /usr/src/app

RUN pip install -r requirements.txt

ENTRYPOINT uvicorn --host 0.0.0.0 main:app --reload