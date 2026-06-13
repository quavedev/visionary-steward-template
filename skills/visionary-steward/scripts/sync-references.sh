#!/usr/bin/env bash
# Regenerate this skill's bundled reference material from the repository's
# canonical files. The `npx skills` / `ags` installers copy the SKILL DIRECTORY
# (not the repo root), so the skill must carry its own references to work
# offline once installed elsewhere. Run after changing playbooks/ or templates/.
set -euo pipefail

SKILL_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
REPO_ROOT="$(cd "$SKILL_DIR/../.." && pwd)"
REF="$SKILL_DIR/references"

rm -rf "$REF"
mkdir -p "$REF/playbooks" "$REF/templates"

cp "$REPO_ROOT/playbooks/existing-project-repair.md" "$REF/playbooks/"
cp "$REPO_ROOT/playbooks/new-project-bootstrap.md"   "$REF/playbooks/"
cp "$REPO_ROOT/output-map.md"      "$REF/"
cp "$REPO_ROOT/questionnaire.md"   "$REF/"
cp "$REPO_ROOT/basics-prompt.md"   "$REF/"
cp "$REPO_ROOT/ai-facilitator.md"  "$REF/"
cp -R "$REPO_ROOT/templates/." "$REF/templates/"

echo "Synced references into $REF"
