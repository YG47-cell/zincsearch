curl -L https://github.com/zincsearch/zincsearch/releases/download/v0.1.1/olympics.ndjson.gz -o olympics.ndjson.gz
gzip -d  olympics.ndjson.gz 
curl http://localhost:4080/api/_bulk -i -u admin:Complexpass#123  --data-binary "@olympics.ndjson"