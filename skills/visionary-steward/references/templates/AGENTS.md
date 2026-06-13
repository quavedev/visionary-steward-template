# AI Instructions

## Project

**{{PRODUCT_NAME}}** is {{PRODUCT_DESCRIPTION}}.

Primary users: {{PRIMARY_USERS}}.

Important product language:

- Use `{{PRODUCT_NAME}}` in user-facing text.
- Avoid: {{FORBIDDEN_PRODUCT_TERMS}}.
- Tone: {{COPY_TONE}}.

## Repository Layout

| Path | Contents |
| --- | --- |
| `{{APP_PATH}}` | {{APP_PATH_DESCRIPTION}} |
| `{{TEST_PATH}}` | {{TEST_PATH_DESCRIPTION}} |
| `{{DOCS_PATH}}` | {{DOCS_PATH_DESCRIPTION}} |
| `internal-docs/ai/` | Long-form AI reference docs |
| `.agents/skills/` | Reusable AI workflows |

Update this table after the repo structure changes.

## Architecture

Architecture style: {{ARCHITECTURE_STYLE}}.

Read `internal-docs/ai/architecture.md` before changing boundaries between apps, packages, services, modules, APIs, databases, or deployment units.

## Commands

Use the project package manager and runtime exactly as documented here.

```bash
{{INSTALL_COMMAND}}          # install dependencies
{{DEV_COMMAND}}              # run locally
{{LINT_COMMAND}}             # lint
{{FORMAT_COMMAND}}           # format
{{TEST_COMMAND}}             # test
{{BUILD_COMMAND}}            # build or compile check
```

If a command is unknown, ask before inventing one.

## Coding Rules

Read `internal-docs/ai/coding-style.md` before broad code changes.

Project rules:

1. {{CODING_RULE_1}}
2. {{CODING_RULE_2}}
3. {{CODING_RULE_3}}
4. {{CODING_RULE_4}}
5. {{CODING_RULE_5}}

## Testing Rules

Read `internal-docs/ai/quality-gates.md` before deciding which tests to run.

- For bug fixes, add or update a focused regression test when practical.
- For UI changes, verify the relevant screen or component.
- For API changes, update API docs and run endpoint-level tests.
- For migration or data changes, document rollback and safety assumptions.

## Work Tracking

Work tracking system: {{WORK_TRACKING_SYSTEM}}.

Use `.agents/skills/create-work-item/SKILL.md` when creating work.
Use `.agents/skills/execute-work-item/SKILL.md` when implementing work from a tracked item.

Status model:

- Backlog: {{STATUS_BACKLOG}}
- Ready: {{STATUS_READY}}
- In progress: {{STATUS_IN_PROGRESS}}
- Review: {{STATUS_REVIEW}}
- Done: {{STATUS_DONE}}

## Runtime Feedback

Runtime operations system: {{RUNTIME_OPERATIONS_SYSTEM}}.

Read `internal-docs/ai/quave-one.md` if this project uses Quave ONE for app/env status, MCP tools, logs, history, deploy checks, or automations.

Errors and logs are product feedback. Treat runtime errors, failed jobs, alerting events, and suspicious log patterns as signals to investigate, document, and convert into work when appropriate.

## Safety Rules

Read `internal-docs/ai/safety.md` before touching secrets, production data, infrastructure, billing, customer data, authentication, authorization, or deployment.

Agents must not:

- Commit secrets, tokens, credentials, or local environment files.
- Mutate production systems without explicit human approval.
- Run destructive database, infrastructure, or deployment commands without explicit human approval.
- Print sensitive customer data, credentials, or full connection strings.
- Overwrite unrelated user changes.

## Before Finishing

1. Run the relevant quality gate from `internal-docs/ai/quality-gates.md`.
2. Re-read the diff.
3. Confirm docs were updated when behavior changed.
4. Confirm no secrets or local artifacts were added.
5. Summarize changes, tests, risks, and remaining unknowns.

## References

| Doc | When to read |
| --- | --- |
| `internal-docs/ai/architecture.md` | App/service boundaries, module ownership, data ownership |
| `internal-docs/ai/coding-style.md` | Framework and language rules |
| `internal-docs/ai/domain-model.md` | Product concepts and user-facing language |
| `internal-docs/ai/integrations.md` | External APIs and operational dependencies |
| `internal-docs/ai/quave-one.md` | Quave ONE app/env/MCP/automation/log setup, when applicable |
| `internal-docs/ai/quality-gates.md` | Install, lint, test, build, release checks |
| `internal-docs/ai/safety.md` | Secrets, production, data, infra, approvals |
