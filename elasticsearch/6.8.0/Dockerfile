FROM docker.elastic.co/elasticsearch/elasticsearch:6.8.0

RUN elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v6.8.0/elasticsearch-analysis-pinyin-6.8.0.zip
RUN elasticsearch-plugin install -b https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v6.8.0/elasticsearch-analysis-ik-6.8.0.zip