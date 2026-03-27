# SRE Incident Simulation Lab

A lightweight incident simulation environment for demonstrating SRE practices such as observability, troubleshooting, runbooks, and fault response. This repository intentionally introduces common operational failure patterns so they can be detected, investigated, and documented.

## What this repository demonstrates

- Failure injection
- Service health validation
- Incident response thinking
- Runbook-driven troubleshooting
- Basic service monitoring patterns

## Scenarios included

- CPU pressure
- Application process crash
- Slow response simulation

## Repository structure

```text
.
├── app/
│   ├── app.py
│   └── requirements.txt
├── docker-compose.yml
├── monitoring/
│   └── healthcheck.sh
├── runbooks/
│   └── incident-response.md
└── scripts/
    ├── crash_service.sh
    ├── cpu_stress.sh
    └── latency_inject.sh
```

## Running locally

```bash
docker compose up --build
```

The demo application exposes:

- `/` normal response
- `/health` health endpoint
- `/slow` delayed response

## Learning goals

This project is intentionally simple. The value is not complexity; it is showing how you think:

- How failures are introduced
- How symptoms are observed
- How operators respond
- How runbooks reduce recovery time

## Suggested next steps

- Add OpenSearch or Prometheus/Grafana
- Add automated alerting
- Add post-incident review templates
- Add chaos engineering workflows

## Disclaimer

Do not run fault injection scripts on production systems.
