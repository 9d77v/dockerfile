FROM python:3.6.8

RUN pip install scrapy 
RUN pip install sqlalchemy psycopg2-binary  redis mysqlclient elasticsearch
RUN pip install numpy==1.15.0 pandas==0.24.1 ray==0.6.2 modin
RUN pip install surprise
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" >  /etc/timezone 

CMD [ "/bin/sh" ] 