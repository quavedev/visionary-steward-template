---
name: execute-work-item
description: Implement a tracked work item by creating a plan, working item by item, running focused proof, and leaving an auditable trail.
---

# Execute Work Item

## Use When

Use this skill when the user asks to implement, execute, build, fix, or carry a tracked work item to review.

## Inputs

- Work item link or identifier
- Target branch or base branch, if not default
- Scope constraints
- Required proof
- Release or compatibility constraints

## Workflow

1. Read the work item.
2. Inspect the relevant code and docs.
3. Create or update an execution checklist in the work item when the tool supports it.
4. Mark the current checklist item in progress.
5. Implement the smallest coherent change.
6. Run focused proof from `internal-docs/ai/quality-gates.md`.
7. Update the checklist with proof.
8. Repeat until all items are done or blocked.
9. Run `review-change` for non-trivial code changes.
10. Prepare the PR or final handoff according to the team's adapter.

## Checklist Pattern

```md
## Execution checklist

- [ ] {{work}} - proof: {{proof}}
- [ ] {{work}} - proof: {{proof}}
- [ ] {{work}} - proof: {{proof}}
```

## Safety

- Do not rewrite the user's original problem statement.
- Do not silently expand scope.
- Do not mutate production systems.
- Do not overwrite unrelated user changes.
- If the work crosses repo/service boundaries, inspect each boundary before editing.

## Proof

Each checklist item needs evidence, such as:

- test command
- screenshot
- log line
- local reproduction
- code reference
- docs update
- review result
