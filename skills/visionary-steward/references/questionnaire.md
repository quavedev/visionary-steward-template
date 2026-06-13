# Questionnaire

Use this questionnaire to collect the minimum information needed to generate project-specific AI instructions.

The AI should not ask every question at once. Ask in batches, infer from the repo when possible, and confirm assumptions before writing files.

## 1. Product Identity

- What is the product name?
- Is there any old name the AI must avoid?
- What does the product do in one paragraph?
- Who is the primary user?
- What outcome matters most: speed, reliability, compliance, revenue, learning, internal productivity, other?
- What language and tone should user-facing copy use?
- Are there sensitive terms, competitors, customers, or vertical details the AI should avoid exposing?

## 2. Project Shape

- Is this a new project or existing project?
- Is the codebase a monorepo, modular monolith, microservice system, package/library, CLI, mobile app, data pipeline, or something else?
- What are the main folders or services?
- Which parts are user-facing?
- Which parts are internal/admin-only?
- Which parts run background jobs?
- Which parts expose public APIs?
- Which parts are infrastructure or deployment code?

## 3. Stack

- What frontend framework is used?
- What backend framework is used?
- What language or languages are used?
- What package manager is used?
- What database or storage systems are used?
- What queue, cron, or job systems are used?
- What auth system is used?
- What observability tools are used?
- What external APIs are critical?
- Do you use Quave ONE for cloud/runtime management?
- If yes, which apps, environments, MCP tools, automations, log streams, and Slack alerts should the AI know about?

## 4. Architecture Preferences

- Does the team prefer a monolith, modular monolith, microservices, serverless functions, or another style?
- Where should business logic live?
- Where should validation live?
- Where should permissions live?
- Where should integration-specific code live?
- What boundaries must not be crossed?
- Are there generated files or vendor folders the AI should avoid editing?
- Are there sibling repos the AI must inspect for some tasks?

## 5. Work Tracking

- What system tracks work: GitHub Issues, GitHub Projects, Linear, Jira, Notion, Trello, other?
- What statuses exist?
- What counts as ready for development?
- What counts as done?
- Does the team estimate work? If yes, which scale?
- Should the AI create checklists inside issues/tasks?
- Should the AI update the issue/task as it works?
- Where should blockers be recorded?
- Where should QA results be recorded?

## 6. Code Review And Delivery

- How are branches named?
- What is the default base branch?
- Who reviews which areas?
- What must be in a PR description?
- What tests must run before a PR?
- Is there a preview environment?
- What must be true before merging?
- What must be true before releasing?

## 7. Quality Gates

- What command installs dependencies?
- What command runs the dev server?
- What command runs formatting?
- What command runs lint?
- What command runs unit tests?
- What command runs integration tests?
- What command runs e2e tests?
- What command checks types or compilation?
- Which commands are too expensive to run by default?
- Which focused tests should be preferred for common changes?

## 8. Safety

- What files must never be committed?
- What secrets or credentials exist?
- Can the AI read production logs?
- Can the AI read production databases?
- Can the AI mutate production data?
- Can the AI run infrastructure commands?
- What operations require explicit human approval?
- What data must be redacted in final answers?
- Are there compliance constraints?

## 9. Runtime Feedback And Automations

- Where do runtime errors appear?
- Where do logs live?
- Which errors should alert humans immediately?
- Are alerts sent to Slack, email, PagerDuty, Discord, Teams, or another channel?
- Does Quave ONE send automations to Slack?
- Which Quave ONE app/env IDs or names should the AI use?
- Which MCP tools should the AI prefer for status, logs, history, or deployment checks?
- What log streams or search terms matter most?
- What should become a work item automatically?
- What should be investigated manually before creating work?

## 10. Skills To Create

Which workflows happen repeatedly?

- Create a work item
- Estimate or scope a work item
- Execute a work item
- Create a PR
- Review a change
- Run QA
- Release a change
- Debug production
- Add an API endpoint
- Add a database migration
- Add a background job
- Add an integration
- Publish docs or content
- Analyze business metrics
- Watch runtime errors and logs
- Handle customer feedback

For each repeated workflow:

- What triggers it?
- What inputs are needed?
- What steps are always required?
- What proof is required?
- What artifact should be left behind?

## 11. Feedback And Metrics

- Where does customer feedback arrive?
- Where are bugs reported?
- Where are product metrics?
- Where are revenue or billing metrics?
- Where are uptime and error metrics?
- Should AI create follow-up work items from metrics or feedback?
- Who decides prioritization?
