#!/usr/bin/env bash
set -euo pipefail

echo "==> Creating network..."
docker network create signoz-net-dev 2>/dev/null || echo "Network exists"

echo "==> Starting SigNoz..."
docker compose -f docker-compose-dev.yaml up -d

echo "==> Starting Nginx..."
docker compose -f docker-compose-nginx.yaml up -d

echo ""
echo "==> Done!"
echo "UI: http://localhost"
echo "OTLP gRPC: localhost:4317"
echo "OTLP HTTP: localhost:4318"
