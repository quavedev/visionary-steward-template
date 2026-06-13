# Output Map

This map explains what the AI should generate and how each file should be used.

## Core Files

| File | Purpose | Loaded by default? |
| --- | --- | --- |
| `AGENTS.md` | Short project-wide AI contract | Yes |
| `internal-docs/ai/architecture.md` | System structure and ownership boundaries | No, read on demand |
| `internal-docs/ai/coding-style.md` | Language, framework, and code conventions | No, read on demand |
| `internal-docs/ai/domain-model.md` | Product concepts and user-facing language | No, read on demand |
| `internal-docs/ai/integrations.md` | External systems, APIs, and operational dependencies | No, read on demand |
| `internal-docs/ai/quave-one.md` | Optional Quave ONE app/env/MCP/automation/log/Slack setup | No, read on demand |
| `internal-docs/ai/quality-gates.md` | Install, run, lint, test, build, and release proof | No, read on demand |
| `internal-docs/ai/safety.md` | Secrets, production, data, infra, and approval boundaries | No, read on demand |
| `docs/ai-decisions.md` | Setup choices, tradeoffs, assumptions, open questions | No |
| `docs/ai-operating-model.md` | How work flows through tools and skills | No |
| `.agents/skills/*/SKILL.md` | Repeatable workflows | Triggered by task |

## Foundation Vs Skills Vs Workflows

Use this rule to decide where information belongs:

- Put stable facts and rules in foundation docs.
- Put repeated procedures in skills.
- Put cross-skill delivery loops in the operating model.

Examples:

| Information | Destination |
| --- | --- |
| "Use Linear, not GitHub Issues" | `AGENTS.md` and `docs/ai-operating-model.md` |
| "Run `pnpm test` before PR" | `internal-docs/ai/quality-gates.md` |
| "Never mutate production DB without approval" | `internal-docs/ai/safety.md` and `AGENTS.md` |
| "How to create a Linear task" | `.agents/skills/create-work-item/SKILL.md` |
| "How a feature moves from idea to release" | `docs/ai-operating-model.md` |
| "Domain words users understand" | `internal-docs/ai/domain-model.md` |
| "How Quave ONE MCP should inspect logs and env status" | `internal-docs/ai/quave-one.md` |
| "Which runtime errors should become alerts or work items" | `docs/ai-operating-model.md` and `internal-docs/ai/quave-one.md` |

## Tool Adapters

The template should not assume a single tool. Use adapters.

### Work Tracking Adapter

Supported examples:

- GitHub Issues + GitHub Projects
- Linear
- Jira
- Notion
- Trello
- Plain Markdown backlog

The generated skills should use the chosen adapter's terms:

| Generic | GitHub | Linear | Jira |
| --- | --- | --- | --- |
| Work item | Issue | Issue | Ticket |
| Board | Project | Team/project views | Board |
| Status | Status field | Workflow state | Status |
| PR link | Pull request link | PR link in issue | Development link |
| QA note | Issue comment/checklist | Comment or sub-issue | Comment/sub-task |

### Architecture Adapter

Supported examples:

- Single app
- Modular monolith
- Monorepo with apps/packages
- Microservices
- Serverless functions
- Mobile app plus API
- CLI/library

The generated architecture doc should name:

- deployable units
- ownership boundaries
- shared packages
- data ownership
- API boundaries
- generated/vendor files
- migration strategy

### Stack Adapter

Do not copy framework rules between stacks.

Examples:

- Meteor 3: server APIs are async-only.
- Next.js: distinguish server components, client components, route handlers, server actions, and edge/runtime constraints.
- Rails: follow Rails conventions, migrations, models, controllers, jobs, and service objects as the local project defines them.
- Django: keep app boundaries, migrations, settings, management commands, and serializers/forms consistent.
- Node microservices: define package manager, service boundaries, shared libraries, API contracts, queues, and deployment units.

If the AI does not know a stack-specific rule, it should ask or inspect the repo instead of inventing one.

### Runtime Feedback Adapter

Supported examples:

- Quave ONE automations to Slack
- Sentry
- Datadog
- Grafana/Loki
- CloudWatch
- Vercel logs
- Kubernetes logs
- Uptime checks
- Customer support tools

The generated operating model should define:

- where errors appear
- where logs live
- what gets sent to humans
- what MCP tools or dashboards to use
- what alert severity means
- when to create work items
- when to investigate before filing work
- what data must be redacted
