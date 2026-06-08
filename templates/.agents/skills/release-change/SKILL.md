---
name: release-change
description: Prepare or verify a release using the project's deployment, changelog, rollback, and monitoring rules.
---

# Release Change

## Use When

Use this skill when the user asks to release, deploy, prepare release notes, verify a deployment, or check a rollout.

## Inputs

- Change or PR
- Target environment
- Release method
- Required checks
- Rollback expectations

## Workflow

1. Read `internal-docs/ai/quality-gates.md` and `internal-docs/ai/safety.md`.
2. Identify the release adapter from `docs/ai-operating-model.md`.
3. Confirm the target environment.
4. Confirm required checks are green.
5. Prepare release notes or changelog when required.
6. Verify deployment using safe read-only checks.
7. Check logs, health, metrics, or preview URLs according to the project.
8. Record rollback notes.

## Safety

Do not deploy to production, run migrations, or mutate infrastructure unless the project's safety rules allow it and the user explicitly approves.

## Final Report

Include:

- version/commit/PR
- environment
- checks run
- deployment evidence
- rollback path
- known risks
