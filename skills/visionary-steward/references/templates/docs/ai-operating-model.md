# AI Operating Model

This document explains how foundation, skills, and workflows connect in {{PRODUCT_NAME}}.

## Foundation

The foundation files are:

- `AGENTS.md`
- `internal-docs/ai/architecture.md`
- `internal-docs/ai/coding-style.md`
- `internal-docs/ai/domain-model.md`
- `internal-docs/ai/integrations.md`
- `internal-docs/ai/quave-one.md` when Quave ONE is used
- `internal-docs/ai/quality-gates.md`
- `internal-docs/ai/safety.md`

These files tell the AI what is true before work starts.

## Skills

The current skills are:

- `create-work-item`
- `execute-work-item`
- `review-change`
- `qa-pass`
- `release-change`
- `analyze-feedback`
- `configure-quave-one` when Quave ONE is used

Add new skills only when a workflow is repeated, high-risk, or easy to do incorrectly.

## Current Workflow

```txt
{{CURRENT_WORKFLOW}}
```

## Target Workflow

```txt
Idea or problem
  -> {{WORK_ITEM_NAME}}
  -> scope and acceptance criteria
  -> execution checklist
  -> branch or workspace
  -> implementation
  -> focused tests
  -> review
  -> QA
  -> release
  -> runtime errors, logs, and alerts
  -> metrics and feedback
  -> new work items
```

## Tool Adapters

### Work Tracking

System: {{WORK_TRACKING_SYSTEM}}

Rules:

- New work items are created with `.agents/skills/create-work-item/SKILL.md`.
- Implementation work uses `.agents/skills/execute-work-item/SKILL.md`.
- QA findings are recorded in {{QA_RECORD_LOCATION}}.
- Blockers are recorded in {{BLOCKER_RECORD_LOCATION}}.

### Code Review

System: {{CODE_REVIEW_SYSTEM}}

Rules:

- Base branch: {{BASE_BRANCH}}
- Branch naming: {{BRANCH_NAMING}}
- Required PR fields: {{PR_REQUIRED_FIELDS}}
- Reviewers: {{REVIEWERS}}

### Release

System: {{RELEASE_SYSTEM}}

Rules:

- Preview environment: {{PREVIEW_ENVIRONMENT}}
- Release trigger: {{RELEASE_TRIGGER}}
- Rollback: {{ROLLBACK_PROCESS}}

### Runtime Feedback

System: {{RUNTIME_FEEDBACK_SYSTEM}}

Rules:

- Error source: {{ERROR_SOURCE}}
- Log source: {{LOG_SOURCE}}
- Alert channel: {{ALERT_CHANNEL}}
- Automation owner: {{AUTOMATION_OWNER}}
- Work item threshold: {{WORK_ITEM_THRESHOLD}}
- Manual investigation threshold: {{MANUAL_INVESTIGATION_THRESHOLD}}

Runtime errors are not background noise. They are product signals. The AI should help inspect, summarize, redact, and convert them into tracked work when the pattern or severity justifies it.

## Human Stewardship Points

A human must decide:

- Product priority
- Scope tradeoffs
- User-facing behavior changes
- Risk acceptance
- Production mutations
- Release timing
- Whether a surprising AI decision is acceptable

The AI can propose, implement, verify, and document. The human stewards judgment.
