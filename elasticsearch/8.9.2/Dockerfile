FROM elasticsearch:8.9.2

RUN elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v8.9.2/elasticsearch-analysis-pinyin-8.9.2.zip
RUN elasticsearch-plugin install -b https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v8.9.2/elasticsearch-analysis-ik-8.9.2.zip
RUN elasticsearch-plugin install -b https://github.com/bells/elasticsearch-analysis-dynamic-synonym/releases/v8.9.2/elasticsearch-analysis-dynamic-synonym-8.9.2.zip