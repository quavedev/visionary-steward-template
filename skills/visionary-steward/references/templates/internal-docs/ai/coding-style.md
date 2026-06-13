# Coding Style

## Stack

{{STACK_SUMMARY}}

## Language Rules

- Primary language: {{PRIMARY_LANGUAGE}}
- Package manager: {{PACKAGE_MANAGER}}
- Module system: {{MODULE_SYSTEM}}
- Formatting: {{FORMATTER}}
- Linting: {{LINTER}}

## Framework Rules

{{FRAMEWORK_RULES}}

Examples of framework-specific rules:

- For Next.js, distinguish server components, client components, route handlers, server actions, and runtime constraints.
- For Rails, follow local conventions for models, controllers, migrations, jobs, and service objects.
- For Django, keep app boundaries, migrations, settings, serializers/forms, and management commands consistent.
- For microservices, preserve service boundaries, API contracts, queue contracts, and data ownership.

Remove examples that do not apply after this file is generated.

## Mandatory Patterns

- {{MANDATORY_PATTERN_1}}
- {{MANDATORY_PATTERN_2}}
- {{MANDATORY_PATTERN_3}}

## Forbidden Patterns

- {{FORBIDDEN_PATTERN_1}}
- {{FORBIDDEN_PATTERN_2}}
- {{FORBIDDEN_PATTERN_3}}

## File Organization

| Kind | Location | Naming |
| --- | --- | --- |
| UI components | `{{UI_COMPONENT_LOCATION}}` | {{UI_COMPONENT_NAMING}} |
| Business logic | `{{BUSINESS_LOGIC_LOCATION}}` | {{BUSINESS_LOGIC_NAMING}} |
| Tests | `{{TEST_LOCATION}}` | {{TEST_NAMING}} |
| API code | `{{API_LOCATION}}` | {{API_NAMING}} |

## Comments

Use comments for non-obvious decisions, not for restating code.

## Before Editing

- Follow existing local patterns.
- Prefer small changes at the right ownership boundary.
- Avoid unrelated refactors.
- Avoid changing generated files.
- Preserve user changes in the working tree.
