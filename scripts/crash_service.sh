#!/usr/bin/env bash
set -euo pipefail
docker compose kill app
echo "Application container stopped to simulate a crash"
