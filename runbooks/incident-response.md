# Incident Response Runbook

## Scenario
Application latency or availability degradation in the demo service.

## Triage steps
1. Confirm user-visible symptoms.
2. Check container health and logs.
3. Validate `/health` endpoint.
4. Reproduce `/slow` behaviour if latency is suspected.
5. Identify whether the service is down, slow, or resource-constrained.

## Recovery actions
- Restart the affected service
- Roll back recent changes if relevant
- Remove synthetic fault injection
- Validate health endpoint after remediation

## Post-incident review
- What failed?
- How quickly was the issue detected?
- What signals were missing?
- How can the runbook or alerting be improved?
