# AI Guidelines

This document defines how AI tools (Cursor, Codex, etc.) should be used when
working in this repository.  
These rules exist to minimize risk, reduce noise, and keep changes deliberate.

AI tools are treated as assistants, not decision-makers.

---

## General Behavior

- Make **small, incremental changes**.
- Prefer **clarity and maintainability** over clever or novel solutions.
- Default to **production-ready** patterns.
- Avoid speculative abstractions or over-engineering.
- Follow existing patterns and conventions in the repository.
- Do not start long-running processes (dev servers, watchers) unless explicitly requested.


---

## Scope & Changes

- Touch **as few files as possible** to achieve the stated goal.
- Do not refactor unrelated code.
- Do not rename files, folders, or symbols unless explicitly requested.
- Avoid large or sweeping changes without prior approval.
- Ask for confirmation before:
  - large refactors
  - architectural changes
  - introducing new patterns

---

## Dependencies & Stack

- Do **not** introduce new libraries or frameworks unless explicitly approved.
- Use only technologies defined in `STACK.md`.
- Prefer framework-native solutions before suggesting third-party dependencies.

---

## Code Output

- Produce clean, readable, and boring code.
- Avoid commented-out code, TODOs, debug statements, or console logs.
- Do not leave partially implemented features.
- Ensure changes align with the Definition of Done.

---

## Testing & Safety

- Respect existing tests and add new tests only when appropriate.
- Do not weaken test coverage to make changes pass.
- Prefer failing fast over silently ignoring errors.

---

## Communication

- When a task is ambiguous, ask clarifying questions **before** making changes.
- When proposing non-trivial changes, explain the reasoning briefly.
- Default to returning **unified diffs** instead of full file rewrites.

---

## When in Doubt

- Stop and ask for guidance.
- Do not assume intent.
- Prefer the simplest working solution consistent with existing code.
