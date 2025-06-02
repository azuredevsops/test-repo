FROM python@sha256:49454d2bf78a48f217eb25ecbcb4b5face313fea6a6e82706465a6990303ada2

RUN apt-get update && \
    apt-get upgrade -y

RUN pip install --upgrade pip setuptools    

WORKDIR /app

COPY  app.py .

CMD [ "python", "app.py" ]