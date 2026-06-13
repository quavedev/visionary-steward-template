---
name: visionary-steward
description: Make a repository AI-agent-friendly using the Quave Visionary Steward pattern. Use when the user wants to set up, repair, or improve AI/agent instructions for a project — e.g. "apply the visionary steward", "make this repo AI-ready", "add AGENTS.md and AI docs", "apply the steward basics", "improve the agent setup". Handles both new projects (bootstrap) and existing repos (repair), and applies a minimal "basics" subset by default unless asked for the full setup.
argument-hint: "[basics|full] [path-to-project]"
metadata:
  version: "0.1.0"
  source: https://github.com/quavedev/visionary-steward-template
---

# Visionary Steward

Turn a project into an AI-guided software system: a short always-loaded contract, on-demand reference docs, a few repeatable skills, and a delivery loop. Stack- and vendor-neutral — extract the pattern, never copy another project's specifics.

This skill is self-contained. Its reference material is bundled next to this file under `references/` and travels with the skill wherever it is installed:

- `references/playbooks/existing-project-repair.md` — follow this for an existing repo (the common case).
- `references/playbooks/new-project-bootstrap.md` — follow this for a brand-new repo.
- `references/questionnaire.md` — questions to ask (in small batches; infer from the repo first).
- `references/output-map.md` — where each piece of information belongs.
- `references/templates/` — `AGENTS.md`, `internal-docs/ai/*`, `docs/*`, and `.agents/skills/*` starting points to copy from.
- `references/basics-prompt.md` — the paste-anywhere quick prompt for fast cases.

If `references/` is somehow missing, the full source lives at https://github.com/quavedev/visionary-steward-template — the procedure below is self-sufficient without it.

## Scope guard

Operate on a **single project root**, not a workspace of many repos. If `ls` shows dozens of unrelated project folders, STOP and ask which project to work on.

## Where files go (use what the target agent uses)

This skill writes plain files; it is not tied to one agent. Place the always-loaded contract where the project's agents read it (`AGENTS.md` is the portable default; also fine: `CLAUDE.md`, `.cursor/rules`). Reusable skills go under `.agents/skills/` (portable), `.claude/skills/`, or `.codex/skills/` — match whatever already exists in the repo.

## Mode

1. Read the argument: `basics` (default) or `full`; an optional project path.
2. Decide new vs existing: if the target already has source files, treat it as **existing-project repair**; otherwise **new-project bootstrap**.
3. Default to the **basics** unless the user says "full" or "everything".

## "The basics" (default subset — not the whole template)

Create or patch, adapting paths to whatever conventions already exist:

1. `AGENTS.md` — short always-loaded contract that links to the docs below.
2. `internal-docs/ai/quality-gates.md` — real install / dev / lint / format / test / build commands.
3. `internal-docs/ai/safety.md` — secrets, production access, approvals, what agents must never do.
4. `internal-docs/ai/architecture.md` — where things live; app/service/data boundaries.
5. `docs/ai-decisions.md` — choices made, assumptions, and what was intentionally skipped.

Do NOT generate domain-model, integrations, coding-style, operating-model, or any new skills unless there is clear repeated pain that justifies one. Record anything skipped as "future" in `docs/ai-decisions.md`. Copy starting points from `references/templates/`.

## Procedure (existing repo)

1. **Inspect first.** README, package manifests, framework/test/CI/deploy config, and any existing `CLAUDE.md` / `AGENTS.md` / `.cursor` rules / docs. Infer stack, package manager, commands, boundaries, deploy model, and safety-sensitive areas.
2. **Audit.** Produce a short "AI Stewardship Audit" (Present / Missing / Risk / Proposed changes + exact file list). Show it before writing. For a quick/explicit "just do it" request, keep the audit to a few lines and proceed.
3. **Write the basics.** Keep `AGENTS.md` short; push detail into `internal-docs/ai/*`. Fill commands only from real evidence — never invent one; mark unknowns `TBD`. Preserve existing conventions; link to existing files instead of duplicating; never overwrite a file without reading it first.
4. **Validate** with safe checks only (markdown/link sanity, an obvious cheap typecheck/lint). NEVER run migrations, deploys, destructive scripts, or production commands.
5. **Report.** Files added, files changed, conventions preserved, unknowns needing a human, and the single best next improvement.

For a new repo, follow `references/playbooks/new-project-bootstrap.md` instead: foundation first, mark unknown commands `TBD`, scaffold only after the foundation exists.

## Quave note (only if it applies)

If the target runs on Quave ONE and the agent has `quave-one` / `quave-cloud` MCP tools available, record the relevant app/env names and useful MCP tools in `safety.md` (or a short `internal-docs/ai/quave-one.md`). Many Quave repos are Meteor 3 (server APIs async-only); confirm from the manifest before writing stack rules. Do not add Quave-specific content to non-Quave projects.

## Done when

`AGENTS.md` plus the chosen docs exist, are short and accurate, contain no invented commands, preserve existing conventions, and `docs/ai-decisions.md` lists what was intentionally skipped.

---

Maintainers: `references/` is generated from the repo's canonical files by `scripts/sync-references.sh`. After editing root `playbooks/` or `templates/`, re-run it so the bundled copies stay in sync.
