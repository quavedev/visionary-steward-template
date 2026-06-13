---
name: qa-pass
description: Run a QA pass against a checklist, feature, release candidate, or tracked work item, recording passes, blockers, and bugs without stopping at the first failure.
---

# QA Pass

## Use When

Use this skill when the user asks to test a feature, validate a checklist, regression-test a fix, or verify a release candidate.

## Inputs

- Feature or work item
- Checklist or acceptance criteria
- Test environment
- Allowed test methods
- Evidence expectations

## Workflow

1. Read the acceptance criteria.
2. Choose test methods: UI, API, CLI, unit tests, e2e tests, logs, metrics, or manual inspection.
3. Test each item independently.
4. Mark pass, blocked, skipped, or bugged.
5. Keep testing after failures.
6. Record evidence.
7. Create or link follow-up bugs.
8. Retest fixed items when asked.

## Status Tags

- `(PASS)` behavior works as expected.
- `(BUGGED)` behavior fails and needs a fix.
- `(BLOCKED)` cannot test because of missing access, environment, or dependency.
- `(SKIPPED)` intentionally not tested, with reason.

## Safety

- Do not mutate production data unless explicitly approved.
- Do not expose secrets or customer data in evidence.
- Do not stop after the first failure unless the environment is unusable.
