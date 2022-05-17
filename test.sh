#!/bin/bash
echo "Hello World"
foo=$(kubectl get pods | awk '{print $1}' | grep -e "api")
kubectl exec -it {foo} -- /bin/sh
echo "Over and out."
