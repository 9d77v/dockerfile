FROM elasticsearch:7.8.1

RUN elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v7.8.1/elasticsearch-analysis-pinyin-7.8.1.zip
RUN elasticsearch-plugin install -b https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.8.1/elasticsearch-analysis-ik-7.8.1.zip
RUN elasticsearch-plugin install -b https://github.com/bells/elasticsearch-analysis-dynamic-synonym/releases/v7.8.1/elasticsearch-analysis-dynamic-synonym-7.8.1.zip