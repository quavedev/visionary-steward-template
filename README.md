# Visionary Steward Template

**What it does:** makes any repository safe for AI agents. It adds a short, always-loaded `AGENTS.md` contract plus focused reference docs — real commands, safety rules, architecture — so any coding agent (Claude Code, Codex, Cursor, Gemini CLI, …) understands your project and works without guessing.

## Use it in 30 seconds

**1. Install the skill** — one command, works with any agent (the open **[Agent Skills](https://agentskills.io)** standard):

```bash
npx skills add quavedev/visionary-steward-template
```

**2. From inside any project, tell your agent:**

> apply the visionary steward

That's it. It applies the **basics** by default (an `AGENTS.md` contract + key `internal-docs/ai/*` docs + a decisions log); say **full** for the complete, questionnaire-driven setup.

**Prefer not to install anything?** Copy **[basics-prompt.md](basics-prompt.md)** and paste it into your agent. More install options are in [Install as a skill](#install-as-a-skill); the skill itself lives in [`skills/visionary-steward/`](skills/visionary-steward/SKILL.md).

It is based on the Quave ONE pattern from "The visionary steward", but it is intentionally stack-neutral. It should work whether the user uses GitHub Projects, Linear, Jira, or Notion; Next.js, Rails, Django, Meteor, Laravel, or microservices; a monorepo or many repos; external APIs or a mostly self-contained product.

The goal is to help an AI guide a human through two situations:

1. **Start a new project** with strong AI instructions from day one.
2. **Fix an existing project** by auditing what exists and adding the missing foundation, skills, and workflows.

## What This Template Produces

After the AI facilitator finishes, the target project should have:

```txt
AGENTS.md
  The short always-loaded contract every AI agent must know.

internal-docs/ai/
  Long-form reference docs for architecture, coding rules, quality gates, integrations, deployment, and domain concepts.

.agents/skills/
  Repeatable workflows for recurring work such as creating work items, executing tasks, reviewing changes, QA, releasing, watching runtime errors, and analyzing metrics.

docs/ai-decisions.md
  The important choices made during setup, with tradeoffs and open questions.

docs/ai-operating-model.md
  How foundation, skills, and workflows connect into the team's real development loop.

internal-docs/ai/quave-one.md or equivalent runtime adapter
  Optional cloud, MCP, automation, logs, alerts, and environment setup.
```

The exact paths can change if the project already has conventions, but the concepts should stay separate:

- **Foundation**: stable context and rules.
- **Skills**: repeatable task procedures.
- **Workflows**: how skills connect into a delivery loop.
- **Runtime feedback**: how errors, logs, alerts, usage, and customer signals flow back into work.

## How To Use

Give the AI this folder and say:

```txt
Use visionary-steward-template/ai-facilitator.md.

I want to either:
1. start a new project with this structure, or
2. repair an existing project so AI agents can work safely in it.

Ask me the questionnaire step by step. Then create or update the files in my repo.
```

For a new project, start with [playbooks/new-project-bootstrap.md](playbooks/new-project-bootstrap.md).

For an existing project, start with [playbooks/existing-project-repair.md](playbooks/existing-project-repair.md).

## Install As A Skill

The skill lives at [`skills/visionary-steward/`](skills/visionary-steward/SKILL.md) and follows the open **[Agent Skills](https://agentskills.io)** standard (a `SKILL.md` plus bundled `references/`). It is vendor-neutral — the same skill works in Claude Code, Codex, Cursor, Gemini CLI, and other compliant agents.

### Install (recommended)

```bash
# Installs into whatever agents the CLI detects (Claude Code, Codex, Cursor, …)
npx skills add quavedev/visionary-steward-template

# Or scope it: global, a single skill, etc.
npx skills add quavedev/visionary-steward-template --skill visionary-steward -g
```

Once published, the skill is also discoverable through the open ecosystem directory at [skills.sh](https://skills.sh). The `npx skills` command above is the simplest path and accepts any public GitHub `owner/repo`.

### Install manually

Copy the skill folder into your agent's skills directory — it is self-contained, so `references/` comes along:

```bash
# pick the one your agent reads: .agents/skills (portable), .claude/skills, .codex/skills
cp -R skills/visionary-steward ~/.claude/skills/
```

### Use it

From inside any project, ask your agent to **"apply the visionary steward"** (or run `/visionary-steward` if your agent exposes skills as slash commands). It defaults to the **basics** subset; pass `full` for the complete questionnaire-driven setup.

> In a hurry and don't want to install anything? Just use [basics-prompt.md](basics-prompt.md) — paste it into your agent.

## Design Principles

1. **The AI should ask before assuming.** The template contains defaults, but every project has a different operating model.
2. **Always-loaded instructions must stay short.** Put details in `internal-docs/ai/` and link to them.
3. **Skills should encode repeated work.** If a human says the same instruction three times, it probably deserves a skill.
4. **Workflows should match the team's real tools.** GitHub Projects, Linear, Jira, Slack, email, dashboards, CI, and release systems are all adapters.
5. **Do not overfit to one stack.** A Next.js app, a Meteor monolith, and a microservices platform need different rules.
6. **Safety rules are part of the product.** Secrets, production access, migrations, billing, customer data, and infrastructure mutations need explicit constraints.
7. **The result should be auditable.** Issues, tasks, PRs, QA notes, release notes, and metrics should leave a trail.

## Folder Map

```txt
visionary-steward-template/
  README.md
  ai-facilitator.md          # full facilitator prompt (template/clone use)
  basics-prompt.md           # paste-anywhere quick prompt
  questionnaire.md
  output-map.md
  playbooks/
    new-project-bootstrap.md
    existing-project-repair.md
  templates/                 # files to copy into a target project
    AGENTS.md
    docs/
      ai-decisions.md
      ai-operating-model.md
    internal-docs/ai/
      architecture.md  coding-style.md  domain-model.md
      integrations.md  quave-one.md  quality-gates.md  safety.md
    .agents/skills/
      configure-quave-one/  create-work-item/  execute-work-item/
      review-change/  qa-pass/  release-change/  analyze-feedback/
      skill-template.md
  skills/                    # the installable Agent Skill (npx skills add …)
    visionary-steward/
      SKILL.md               # name + description + the procedure
      references/            # bundled copies of playbooks/ + templates/ (travels on install)
      scripts/
        sync-references.sh   # regenerates references/ from the canonical files above
```

`skills/visionary-steward/references/` is generated from the canonical `playbooks/` and `templates/` by `scripts/sync-references.sh`, so the installed skill is self-contained. Re-run that script after editing the originals.

## What Not To Do

- Do not copy Quave ONE-specific rules into another project.
- Do not force GitHub if the team uses Linear.
- Do not force monorepo patterns if the team works with services.
- Do not create skills for work that only happened once.
- Do not assume Quave ONE is used. When it is used, create a project-specific Quave ONE setup file for MCP, environments, automations, logs, and Slack alerts.
- Do not hide major tradeoffs inside generated files. Record them in `docs/ai-decisions.md`.
- Do not let the AI mutate production systems unless the project explicitly defines how that can happen.
