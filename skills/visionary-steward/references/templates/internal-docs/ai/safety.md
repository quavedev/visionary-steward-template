# Safety

## Risk Level

Project risk level: {{RISK_LEVEL}}.

High-risk areas:

- {{HIGH_RISK_AREA_1}}
- {{HIGH_RISK_AREA_2}}
- {{HIGH_RISK_AREA_3}}

## Secrets

Never commit:

- `.env`
- local secrets files
- credentials
- tokens
- private keys
- production connection strings
- customer exports

Project-specific secret files:

- {{SECRET_FILE_1}}
- {{SECRET_FILE_2}}
- {{SECRET_FILE_3}}

## Production Access

Production read access:

- {{PRODUCTION_READ_RULES}}

Production write access:

- {{PRODUCTION_WRITE_RULES}}

The AI must ask for explicit human approval before:

- {{APPROVAL_REQUIRED_ACTION_1}}
- {{APPROVAL_REQUIRED_ACTION_2}}
- {{APPROVAL_REQUIRED_ACTION_3}}

## Infrastructure

Allowed without approval:

- {{INFRA_ALLOWED_ACTION_1}}
- {{INFRA_ALLOWED_ACTION_2}}

Requires approval:

- apply
- delete
- edit
- patch
- replace
- scale
- restart
- migrate
- deploy to production
- rotate secrets

Adjust this list to the project's real infrastructure.

## Data Handling

Do not print:

- full customer records
- secrets
- access tokens
- full connection strings
- private keys
- sensitive logs

When evidence is needed, summarize and redact.

## Destructive Commands

Never run destructive commands unless the user explicitly asks and the project permits it:

- `rm -rf`
- database drops
- destructive migrations
- production deploys
- force pushes to protected branches
- infrastructure deletes

Record any approved destructive operation in the work item or PR.
