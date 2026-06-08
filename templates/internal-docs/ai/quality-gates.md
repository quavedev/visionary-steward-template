# Quality Gates

## Commands

```bash
{{INSTALL_COMMAND}}          # install dependencies
{{DEV_COMMAND}}              # run locally
{{FORMAT_COMMAND}}           # format
{{LINT_COMMAND}}             # lint
{{TEST_COMMAND}}             # test
{{BUILD_COMMAND}}            # build or compile
{{E2E_COMMAND}}              # e2e, if relevant
```

## Which Gate To Run

| Change Type | Required Proof |
| --- | --- |
| Copy/docs only | {{DOCS_PROOF}} |
| UI change | {{UI_PROOF}} |
| API change | {{API_PROOF}} |
| Business logic change | {{LOGIC_PROOF}} |
| Database change | {{DATABASE_PROOF}} |
| Auth/permission change | {{AUTH_PROOF}} |
| Integration change | {{INTEGRATION_PROOF}} |
| Deployment change | {{DEPLOYMENT_PROOF}} |

## Expensive Commands

These commands are expensive. Ask or explain before running by default:

- {{EXPENSIVE_COMMAND_1}}
- {{EXPENSIVE_COMMAND_2}}
- {{EXPENSIVE_COMMAND_3}}

## Test Data

- Local seed command: {{SEED_COMMAND}}
- Test user: {{TEST_USER}}
- Test environment: {{TEST_ENVIRONMENT}}

Do not use production customer data in tests unless the project explicitly permits it and defines redaction rules.

## Before Finishing

1. Run relevant checks.
2. Report commands and results.
3. State any checks skipped and why.
4. Re-read the diff.
5. Confirm docs and tests match the behavior change.
