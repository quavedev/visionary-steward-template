---
name: analyze-feedback
description: Turn customer feedback, support reports, metrics, incidents, or usage changes into prioritized work items or product insights.
---

# Analyze Feedback

## Use When

Use this skill when the user asks what changed, why metrics moved, what errors mean, what customers are saying, what should be prioritized, or how to turn feedback into work.

## Inputs

- Feedback source
- Runtime alert or log source
- Metric or time period
- Customer segment, if relevant
- Product area
- Desired output: summary, work items, prioritization, or investigation plan

## Workflow

1. Identify the allowed data sources from `internal-docs/ai/integrations.md`, `internal-docs/ai/quave-one.md` when applicable, and `internal-docs/ai/safety.md`.
2. Gather only permitted evidence.
3. Separate facts from interpretation.
4. Group feedback by theme.
5. Identify user impact.
6. Identify likely product, runtime, or technical causes.
7. Recommend actions.
8. Create work items when requested.

## Output

```md
## What Changed

## Evidence

## Likely Drivers

## Recommended Actions

## Follow-Up Work Items
```

## Safety

Redact customer data, credentials, financial details, and private communications unless the project explicitly permits sharing them in the target channel.
