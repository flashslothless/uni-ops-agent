## Scope
- Commit current changes: simplified Cynthia ops system prompt and English README refresh.
- No code edits beyond already applied changes.

## Steps
- Verify repo state: `git status` and `git diff HEAD --name-only` to list changed files.
- Stage changes: `packages/core/src/core/prompts.ts`, `README.md`.
- Commit: message (English) summarizing prompt simplification and README rewrite.
- Optional: push to `origin` if configured.

## Commit Message
- `chore(prompt): simplify Cynthia ops system prompt`
- `docs(readme): rewrite in English; ops-focused usage and configuration`
- `chore: remove git guidance block from default prompt`

## Validation
- Show commit summary and repo status after commit.
- Attempt `git push` if remote exists; otherwise report local commit complete.