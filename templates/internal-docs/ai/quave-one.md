# Quave ONE Runtime Adapter

Use this file when {{PRODUCT_NAME}} runs on Quave ONE or uses Quave ONE MCP tools, automations, logs, history, or Slack alerts.

If the project does not use Quave ONE, replace this file with the equivalent runtime adapter for the chosen platform.

## Purpose

Quave ONE is part of the runtime feedback loop for this project.

The AI should use this file to understand:

- which app and environments matter
- which MCP tools are available
- which logs and errors should be inspected
- which automations notify humans
- which Slack channels receive alerts
- when an error should become a work item

## Quave ONE Resources

| Resource | Value |
| --- | --- |
| Account | {{QUAVE_ONE_ACCOUNT}} |
| App name | {{QUAVE_ONE_APP_NAME}} |
| App ID | {{QUAVE_ONE_APP_ID}} |
| Production env name | {{QUAVE_ONE_PROD_ENV_NAME}} |
| Production env ID | {{QUAVE_ONE_PROD_ENV_ID}} |
| Staging env name | {{QUAVE_ONE_STAGING_ENV_NAME}} |
| Staging env ID | {{QUAVE_ONE_STAGING_ENV_ID}} |
| Region | {{QUAVE_ONE_REGION}} |

Do not store secrets in this file.

## MCP Usage

Preferred MCP tools:

- {{MCP_TOOL_STATUS}} for app/env status
- {{MCP_TOOL_HISTORY}} for env history
- {{MCP_TOOL_LOGS}} for logs
- {{MCP_TOOL_DEPLOYMENTS}} for deployment checks

Rules:

- Prefer MCP tools over guessing from memory.
- Use the explicit app/env IDs above when available.
- Redact secrets, tokens, passwords, and customer data.
- For production diagnosis, use read-only checks unless the user explicitly authorizes an operation.

## Log Streams

Important log streams:

| Stream | Purpose | Search Terms | Severity |
| --- | --- | --- | --- |
| {{LOG_STREAM_NAME}} | {{LOG_STREAM_PURPOSE}} | {{LOG_SEARCH_TERMS}} | {{LOG_SEVERITY}} |

## Automations

Quave ONE automations:

| Automation | Trigger | Destination | Expected Human Action |
| --- | --- | --- | --- |
| {{AUTOMATION_NAME}} | {{AUTOMATION_TRIGGER}} | {{AUTOMATION_DESTINATION}} | {{AUTOMATION_ACTION}} |

Example destinations:

- Slack channel
- Slack DM
- email
- incident tool
- work-tracking tool

## Slack Alerts

Alert channel: {{SLACK_ALERT_CHANNEL}}

Rules:

- Treat repeated runtime errors as product feedback.
- Check logs before dismissing an alert.
- Convert confirmed issues into work items using `.agents/skills/create-work-item/SKILL.md`.
- Link the alert, log summary, deployment, and affected environment in the work item.
- Do not paste sensitive logs into public channels.

## Error Triage

When an error alert arrives:

1. Identify environment and deployment version.
2. Check recent deploy history.
3. Inspect relevant logs.
4. Group repeated errors by signature.
5. Determine user impact.
6. Decide whether this is a bug, noisy log, external dependency failure, or expected condition.
7. Create a work item when action is needed.
8. Add enough evidence for reproduction or investigation.

## Work Item Threshold

Create a work item when:

- {{CREATE_WORK_ITEM_THRESHOLD_1}}
- {{CREATE_WORK_ITEM_THRESHOLD_2}}
- {{CREATE_WORK_ITEM_THRESHOLD_3}}

Investigate manually first when:

- {{INVESTIGATE_FIRST_THRESHOLD_1}}
- {{INVESTIGATE_FIRST_THRESHOLD_2}}
- {{INVESTIGATE_FIRST_THRESHOLD_3}}

## Passive Awareness

The runtime system should support passive awareness.

Even when no one is actively watching a dashboard, important errors should reach the right human channel. The goal is not to create alert fatigue. The goal is to make real product signals visible enough that the team can act methodically.
