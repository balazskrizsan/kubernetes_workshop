#!/bin/bash

kubectl create secret tls env-cert \
  -n ssp-local-prod \
  --key ./private.key \
  --cert ./certificate.crt
