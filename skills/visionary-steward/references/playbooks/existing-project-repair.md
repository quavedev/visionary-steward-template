# Existing Project Repair Playbook

Use this playbook when the user already has a project and wants to make it AI-ready.

## Goal

Add or repair the foundation, skills, and workflows without breaking the existing project or replacing its real conventions with generic ones.

## Step 1: Inspect Before Asking

Read:

- README
- package manifests
- framework config
- CI workflows
- test config
- docs
- deployment config
- observability, logging, alerting, and automation config
- existing agent instructions
- issue templates
- contribution docs
- scripts

Infer:

- stack
- package manager
- app boundaries
- test commands
- build commands
- deployment model
- runtime feedback path
- work-tracking hints
- safety-sensitive areas

Then ask only the questions that remain unclear.

## Step 2: Produce A Repair Audit

Before editing, produce a short audit:

```md
## AI Stewardship Audit

### Present

- Existing README explains local setup.
- CI has lint and test jobs.
- There are issue templates.

### Missing

- No always-loaded AI contract.
- No production safety rules.
- No repeatable review workflow.
- No QA checklist pattern.

### Risk

- Deployment scripts exist but approval boundaries are unclear.
- Secrets are mentioned in docs but redaction rules are not explicit.

### Proposed Changes

- Add AGENTS.md.
- Add internal-docs/ai/* reference files.
- Add .agents/skills/execute-work-item and review-change.
- Add docs/ai-operating-model.md.
```

## Step 3: Preserve Local Conventions

If the repo already has:

- `CONTRIBUTING.md`
- `docs/`
- `.github/`
- `.cursor/rules/`
- `CLAUDE.md`
- `AGENTS.md`
- package scripts
- custom test runners
- release docs

then link to them instead of duplicating everything.

Do not overwrite existing files without reading them.

## Step 4: Generate Or Patch Foundation

Create or update:

- `AGENTS.md`
- `internal-docs/ai/architecture.md`
- `internal-docs/ai/coding-style.md`
- `internal-docs/ai/domain-model.md`
- `internal-docs/ai/integrations.md`
- `internal-docs/ai/quality-gates.md`
- `internal-docs/ai/safety.md`

The root `AGENTS.md` should be concise and should link to long-form docs.

## Step 5: Generate Or Patch Skills

Start with skills that match current pain:

- If work gets lost: `execute-work-item`
- If PRs are weak: `review-change`
- If QA is inconsistent: `qa-pass`
- If releases are risky: `release-change`
- If feedback is not turned into work: `analyze-feedback`
- If Quave ONE MCP/automations are useful but undocumented: `configure-quave-one`
- If task creation is inconsistent: `create-work-item`

Do not generate every possible skill on day one.

## Step 6: Create The Operating Model

Create `docs/ai-operating-model.md` with the real current loop and a recommended target loop.

Example:

```md
## Current Loop

Slack idea -> Linear issue -> implementation -> PR -> manual QA -> deploy
Runtime error -> Slack alert -> manual investigation

## Target Loop

Slack idea
  -> Linear issue with acceptance criteria
  -> execution checklist
  -> branch
  -> focused tests
  -> review-change skill
  -> QA pass
  -> release-change skill
  -> Quave ONE/Sentry/log alerts into Slack or the chosen channel
  -> metrics and feedback review
```

## Step 7: Validate

Run only safe checks:

- Markdown formatting if available.
- Link/path sanity checks if available.
- Existing lint/test commands only if relevant and not expensive.

Do not run destructive scripts, migrations, deploys, or production commands.

## Final Output

End with:

- Files added
- Files changed
- Existing conventions preserved
- Unknowns that need a human
- Suggested next improvement
