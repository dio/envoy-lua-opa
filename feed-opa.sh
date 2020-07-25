#!/usr/bin/env bash

# Submitting example.rego to the OAP server.
curl -X PUT --data-binary @example.rego localhost:8181/v1/policies/example

# Call the endpoint
curl localhost:8000
