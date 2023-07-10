#!/bin/bash
echo "Za zagon baze prosim vpišite ime poda, kjer se baza podatkov nahaja."

echo -e "\nIme poda:"
read postgres_ime

kubectl exec -i $postgres_ime -- psql -f /docker-entrypoint-initdb.d/init.sql
