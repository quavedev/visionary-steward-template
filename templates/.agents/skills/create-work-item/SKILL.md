---
name: create-work-item
description: Create a tracked work item in the team's chosen system, such as Linear, GitHub Issues, Jira, Notion, or a Markdown backlog.
---

# Create Work Item

## Use When

Use this skill when the user asks to create, file, open, capture, or track a task, bug, feature, incident, or follow-up.

## Inputs

- Title
- Problem or opportunity
- Desired outcome
- Acceptance criteria
- Priority or urgency
- Owner or team
- Labels/components, if the tracking system supports them

## Workflow

1. Identify the work-tracking adapter from `docs/ai-operating-model.md`.
2. Ask for missing essentials only.
3. Write a concise title.
4. Write the body with context, acceptance criteria, risks, and links.
5. Set status according to the team's workflow.
6. Add labels, components, estimate, owner, or project fields when available.
7. Return the created item link or path.

## Adapter Notes

- GitHub: create an issue and add it to the configured project when applicable.
- Linear: create an issue in the right team/project and workflow state.
- Jira: create a ticket with project, issue type, priority, and components.
- Markdown backlog: append a structured entry to the configured backlog file.

## Output Shape

```md
## Summary

{{one paragraph}}

## Acceptance Criteria

- [ ] {{criterion}}

## Notes

- {{risk_or_context}}
```

## Safety

Do not include secrets, private customer data, or sensitive internal details in public trackers.
