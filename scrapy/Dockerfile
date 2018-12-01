FROM python:3.7.1-alpine3.8

COPY repositories /etc/apk/repositories 

RUN  apk add --no-cache --virtual .pynacl_deps build-base libxslt-dev libxml2-dev libffi-dev \
    jpeg tiff libpng zlib  postgresql-dev

RUN pip install scrapy sqlalchemy psycopg2

CMD [ "/bin/sh" ] 