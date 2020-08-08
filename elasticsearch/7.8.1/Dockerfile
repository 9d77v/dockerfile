FROM docker.elastic.co/elasticsearch/elasticsearch:7.0.0

RUN elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v7.0.0/elasticsearch-analysis-pinyin-7.0.0.zip
RUN elasticsearch-plugin install -b https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.0.0/elasticsearch-analysis-ik-7.0.0.zip