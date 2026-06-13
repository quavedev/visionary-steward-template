# Basics Prompt

Paste this into your coding agent **from inside the project you want to improve**. It applies only the *basics* of the Visionary Steward — enough for any future agent to understand the project, run the right commands, and act safely — without you reading the whole template.

For the full, questionnaire-driven setup, use [`ai-facilitator.md`](ai-facilitator.md) or the [`playbooks/`](playbooks) instead.

---

```text
# Goal
Make THIS repository sustainably AI-agent-friendly by applying the *basics* of the
Quave Visionary Steward pattern — not the whole template. Optimize so any future agent
can understand the project, run the right commands, and act safely without guessing.

# Source of truth
Reference the Visionary Steward template. Prefer a local copy if one exists in a sibling
folder; otherwise: git clone https://github.com/quavedev/visionary-steward-template.git
Read first: playbooks/existing-project-repair.md (follow it), templates/AGENTS.md, output-map.md.
This is an EXISTING-project repair. Extract the pattern; do NOT copy another project's
stack- or vendor-specific content.

# Scope guard
You must be at a single project root, NOT a workspace folder containing many repos.
If `ls` shows dozens of unrelated project folders, STOP and ask which project to repair.

# "The basics" = this subset only
Create or patch, adapting paths to existing conventions:
  1. AGENTS.md                          short always-loaded contract that links to the docs below
  2. internal-docs/ai/quality-gates.md  real install / dev / lint / format / test / build commands
  3. internal-docs/ai/safety.md         secrets, prod access, approvals, what agents must never do
  4. internal-docs/ai/architecture.md   where things live; app/service/data boundaries
  5. docs/ai-decisions.md               choices made, assumptions, and open questions
Do NOT generate domain-model, integrations, coding-style, operating-model, or any skills
UNLESS there is clear repeated pain that justifies one. List anything skipped as "future"
in ai-decisions.md.

# Procedure
1. INSPECT first. Read README, package manifests, framework/test/CI/deploy config, and any
   existing CLAUDE.md / AGENTS.md / .cursor rules / docs. Infer stack, package manager,
   commands, boundaries, deploy model, and safety-sensitive areas.
2. AUDIT. Produce a short "AI Stewardship Audit" (Present / Missing / Risk / Proposed
   changes + exact file list). Show it first. Write nothing until I confirm — unless I
   already told you to just do it, in which case keep the audit to a few lines and proceed.
3. WRITE the basics. Keep AGENTS.md short; push detail into internal-docs/ai/*. Fill
   commands only from real evidence — never invent one; mark unknowns TBD. Preserve
   existing conventions; link to existing files instead of duplicating; never overwrite a
   file without reading it first.
4. VALIDATE with safe checks only (markdown/link sanity, an obvious cheap typecheck/lint).
   NEVER run migrations, deploys, destructive scripts, or production commands.
5. REPORT: files added, files changed, conventions preserved, unknowns needing a human,
   and the single best next improvement.

# Done when
AGENTS.md + the 4 docs exist, are short and accurate, contain no invented commands,
preserve existing conventions, and ai-decisions.md lists what was intentionally skipped.
```

---

> **Quave projects:** if the repo runs on Quave ONE you'll have `quave-one` / `quave-cloud`
> MCP tools available — note the relevant app/env names in `safety.md`. Many Quave repos are
> Meteor 3 (server APIs are async-only); confirm from the manifest before writing stack rules.
