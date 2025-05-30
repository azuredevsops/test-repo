FROM python:3.10-slim

RUN apt-get update && \
    apt-get upgrade -y

RUN pip install --upgrade pip setuptools    

WORKDIR /app

COPY  app.py .

CMD [ "python", "app.py" ]