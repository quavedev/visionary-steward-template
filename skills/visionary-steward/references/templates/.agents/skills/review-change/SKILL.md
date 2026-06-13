---
name: review-change
description: Run a structured review over a code or documentation change before final handoff, PR, or release.
---

# Review Change

## Use When

Use this skill before opening a PR, marking work complete, releasing, or when the user asks for review.

## Review Lenses

Check the change against:

- Product requirements
- Architecture boundaries
- Coding style
- Tests and quality gates
- Security and privacy
- Production safety
- Backward compatibility
- Documentation
- User-facing copy

## Workflow

1. Identify the diff against the intended base.
2. Read the touched files and nearby code.
3. Read relevant foundation docs.
4. Look for concrete bugs, regressions, missing tests, safety gaps, and stale docs.
5. Fix accepted findings.
6. Rerun focused proof after fixes.
7. Repeat until no accepted findings remain.

## Output

Lead with findings.

If no issues are found, say that clearly and mention residual risk or skipped checks.

## Non-Goals

- Do not request broad refactors unless needed.
- Do not block on style preferences already handled by formatter/linter.
- Do not invent speculative edge cases without evidence.
