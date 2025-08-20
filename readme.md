# Kubernetes Workshop

## Steps

### 1. [Stop 1 code on GitHub](https://github.com/balazskrizsan/kubernetes_workshop/tree/504d315fd0c671bba74ca3a30539feecb1e656d3)
- create namespace:
  - ```kubectl create namespace ssp-local-prod```
- create frontend deployment
  - ```kubectl apply -f frontend-deployment.yaml```
  - check pod
    - ```kubectl.exe get pods```
  - run sh in pod
    - ```kubectl.exe exec -it ssp-frontend-fd955456-6wp95 -n ssp-local-prod -- sh```
  - read logs
    - ```kubectl.exe logs <pod_name>```
  - describe pod
    - ```kubectl.exe describe pod <pod_name>```
- create portmap: portmap.md
- create frontend service
  - check on localhost:3002
  - minikube tunnel
  - check on localhost:3002
- create ingress
  - HSTS hell: chrome://net-internals/#hsts
  - apply cert to secret tls
  - config cert in ingress
  - scale up to 2 pods
  - be happy
