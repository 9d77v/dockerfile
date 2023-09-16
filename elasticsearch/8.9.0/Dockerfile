FROM elasticsearch:8.9.0

RUN elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v8.9.0/elasticsearch-analysis-pinyin-8.9.0.zip
RUN elasticsearch-plugin install -b https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v8.9.0/elasticsearch-analysis-ik-8.9.0.zip
RUN elasticsearch-plugin install -b https://github.com/bells/elasticsearch-analysis-dynamic-synonym/releases/v8.9.0/elasticsearch-analysis-dynamic-synonym-8.9.0.zip