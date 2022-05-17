#!/bin/bash
echo "Hello World"
foo=$(kubectl get pods | awk '{print $1}' | grep -e "api")
kubectl exec -it {foo} -- /bin/sh
python3 manage.py migrate
python3 manage.py collectstatic --noinput
python3 manage.py populatedb
echo "Over and out."
