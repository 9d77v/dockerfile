FROM docker.elastic.co/beats/filebeat:6.8.0

COPY fields.yml /usr/share/filebeat/fields.yml
COPY nginx_access_ingest_default.json /usr/share/filebeat/module/nginx/access/ingest/default.json