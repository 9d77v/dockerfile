FROM elasticsearch:5.6.4-alpine
LABEL email="9d77v@9d77v.me"

COPY ik /usr/share/elasticsearch/plugins/ik

RUN mv /usr/share/elasticsearch/plugins/ik/config /usr/share/elasticsearch/config/analysis-ik
