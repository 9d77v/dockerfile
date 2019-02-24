FROM python:3.6.8

RUN pip install scrapy sqlalchemy psycopg2-binary numpy pandas redis
RUN pip install surprise
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" >  /etc/timezone 

CMD [ "/bin/sh" ] 