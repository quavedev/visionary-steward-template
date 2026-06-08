# New Project Bootstrap Playbook

Use this playbook when the user wants to start a new project with the Visionary Steward structure from day one.

## Goal

Create a project where AI agents can safely help from the beginning because the product identity, architecture, commands, safety rules, skills, and workflows are explicit.

## Step 1: Pick The Initial Shape

Ask:

- Product name
- Product purpose
- Primary users
- New repo location
- Preferred architecture
- Preferred stack
- Work-tracking tool
- Deployment target
- Runtime feedback and alerting target
- Risk level

Then propose a file tree.

Do not generate application code until the foundation is clear.

## Step 2: Create The Foundation

Generate:

- `AGENTS.md`
- `internal-docs/ai/architecture.md`
- `internal-docs/ai/coding-style.md`
- `internal-docs/ai/domain-model.md`
- `internal-docs/ai/integrations.md`
- `internal-docs/ai/quave-one.md` if Quave ONE is used
- `internal-docs/ai/quality-gates.md`
- `internal-docs/ai/safety.md`
- `docs/ai-decisions.md`
- `docs/ai-operating-model.md`

For a new project, mark unknown commands as `TBD` instead of inventing them.

Example:

```md
## Commands

Install: TBD after package manager is selected.
Run dev server: TBD after app scaffold exists.
Run tests: TBD after test framework is selected.
```

## Step 3: Create The First Skills

Create only the skills needed immediately:

- `create-work-item`
- `execute-work-item`
- `review-change`
- `qa-pass`
- `release-change`
- `analyze-feedback`
- `configure-quave-one` if Quave ONE will run the app or provide MCP/automation support

Keep them generic until the team's real process exists.

## Step 4: Scaffold The App

Only after the foundation exists, scaffold the app using the selected stack.

Examples:

- Next.js SaaS app
- Rails app
- Django app
- Meteor app
- Mobile app
- Service-based API
- Static site

Record the scaffold decision in `docs/ai-decisions.md`.

## Step 5: Wire The Operating Loop

Create `docs/ai-operating-model.md` with the actual first version of the loop:

```txt
Idea
  -> work item
  -> implementation checklist
  -> branch
  -> tests
  -> review
  -> release
  -> runtime alerts and logs
  -> feedback
```

If the team has no tool yet, use a Markdown backlog and explicitly mark it as temporary.

## Step 6: First Validation

Before finishing, verify:

- Files exist in the expected locations.
- The always-loaded instructions are short.
- Long details are linked from `AGENTS.md`.
- No stack-specific rules were copied blindly.
- Unknowns are listed.
- The next action is clear.

## Final Output

End with:

- Generated files
- Chosen defaults
- Unknowns
- Recommended next skills
- Suggested first work item
