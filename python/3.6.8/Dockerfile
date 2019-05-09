FROM python:3.6.8

RUN pip install scrapy 
RUN pip install sqlalchemy psycopg2-binary  redis mysqlclient elasticsearch
RUN pip install numpy pandas
RUN pip install surprise
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" >  /etc/timezone 

CMD [ "/bin/sh" ] 