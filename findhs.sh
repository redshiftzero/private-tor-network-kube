#!/bin/bash
set -ex
hs=$(kubectl get pods --selector=app=tor-hs -o name | head -n 1)
hs=${hs:5}
kubectl exec $hs -c tor-hs cat /root/.tor/hs/hostname

