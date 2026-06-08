# Architecture

## Overview

{{PRODUCT_NAME}} uses {{ARCHITECTURE_STYLE}}.

High-level shape:

```txt
{{ARCHITECTURE_DIAGRAM_TEXT}}
```

## Deployable Units

| Unit | Path | Runtime | Owns | Depends On |
| --- | --- | --- | --- | --- |
| {{UNIT_NAME}} | `{{UNIT_PATH}}` | {{UNIT_RUNTIME}} | {{UNIT_OWNS}} | {{UNIT_DEPENDS_ON}} |

## Ownership Boundaries

The AI should preserve these boundaries:

- {{BOUNDARY_1}}
- {{BOUNDARY_2}}
- {{BOUNDARY_3}}

## Data Ownership

| Data | Owner | Storage | Access Rules |
| --- | --- | --- | --- |
| {{DATA_NAME}} | {{DATA_OWNER}} | {{DATA_STORAGE}} | {{DATA_ACCESS_RULES}} |

## API Boundaries

- Public APIs live in {{PUBLIC_API_LOCATION}}.
- Internal APIs live in {{INTERNAL_API_LOCATION}}.
- Client-only code lives in {{CLIENT_CODE_LOCATION}}.
- Server-only code lives in {{SERVER_CODE_LOCATION}}.

## Generated, Vendor, And External Files

Do not edit these unless the user explicitly asks:

- {{GENERATED_OR_VENDOR_PATH_1}}
- {{GENERATED_OR_VENDOR_PATH_2}}
- {{GENERATED_OR_VENDOR_PATH_3}}

## Architecture Change Rules

Before changing architecture boundaries:

1. Read this file.
2. Inspect affected modules or services.
3. Identify data ownership changes.
4. Identify API compatibility changes.
5. Update docs and tests.
6. Record the decision in `docs/ai-decisions.md`.
