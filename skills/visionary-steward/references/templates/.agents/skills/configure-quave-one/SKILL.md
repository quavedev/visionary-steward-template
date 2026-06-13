---
name: configure-quave-one
description: Set up or update the project's Quave ONE runtime adapter so MCP tools, logs, automations, and Slack alerts work well for AI-assisted development.
---

# Configure Quave ONE

## Use When

Use this skill when the project runs on Quave ONE or the user wants Quave ONE MCP tools and automations to support AI development.

## Inputs

- Quave ONE account
- App name and app ID
- Environment names and IDs
- Region
- MCP tools available
- Relevant log streams
- Automation rules
- Slack channels or alert destinations
- Production safety constraints

## Workflow

1. Read `internal-docs/ai/quave-one.md` if it exists.
2. Ask for missing app/env identifiers.
3. Identify which MCP tools should be preferred for status, history, logs, and deploy checks.
4. Document relevant log streams and search terms.
5. Document automations and destinations.
6. Define when alerts become work items.
7. Define what data must be redacted.
8. Update `docs/ai-operating-model.md` so runtime alerts feed the product loop.
9. Do not store secrets.

## Safety

- Do not print secrets, tokens, passwords, or full connection strings.
- Do not mutate production environments unless the user explicitly approves it and the project safety file permits it.
- Keep production diagnosis read-only by default.
- Redact sensitive logs in comments and final answers.

## Output

Update or create:

- `internal-docs/ai/quave-one.md`
- `docs/ai-operating-model.md`
- any relevant work-tracking or alerting notes

Final response should include:

- documented app/env references
- MCP tools configured for agent use
- automations documented
- alert channels documented
- remaining unknowns
