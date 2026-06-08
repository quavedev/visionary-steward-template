# Integrations

## External Systems

| System | Purpose | Environment | Failure Mode | Owner |
| --- | --- | --- | --- | --- |
| {{SYSTEM_NAME}} | {{SYSTEM_PURPOSE}} | {{SYSTEM_ENVIRONMENT}} | {{SYSTEM_FAILURE_MODE}} | {{SYSTEM_OWNER}} |

## Authentication And Secrets

Secrets live in {{SECRET_STORAGE}}.

Rules:

- Never commit secrets.
- Never print full credentials.
- Redact tokens, passwords, keys, connection strings, and customer data in final answers.
- Use the project's approved secret helper or platform when available.

## Local Development Dependencies

Required:

- {{LOCAL_DEPENDENCY_1}}
- {{LOCAL_DEPENDENCY_2}}
- {{LOCAL_DEPENDENCY_3}}

Optional:

- {{OPTIONAL_DEPENDENCY_1}}
- {{OPTIONAL_DEPENDENCY_2}}

## Production Dependencies

Production systems:

- {{PRODUCTION_DEPENDENCY_1}}
- {{PRODUCTION_DEPENDENCY_2}}
- {{PRODUCTION_DEPENDENCY_3}}

## Integration Change Rules

Before changing an integration:

1. Identify auth, permissions, rate limits, retries, and idempotency.
2. Update tests or mocks.
3. Update docs if public behavior changes.
4. Record operational risks in the PR or work item.
