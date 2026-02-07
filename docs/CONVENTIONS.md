# Conventions

This document defines how code is structured, written, and reviewed in projects
generated from this template.  
If a pattern is not defined here, prefer the simplest approach consistent with
the existing codebase.

---

## General

- Favor clarity and readability over cleverness.
- Code should be easy to understand by someone new to the project.
- Keep changes small and incremental.
- Avoid speculative abstractions; introduce them only when justified.
- Delete unused code instead of commenting it out.
- No TODOs, debug statements, or console logs in committed code.
- Prefer explicit code over implicit behavior.

---

## Backend (Laravel)

### Structure
- Controllers should be thin and focused on HTTP concerns.
- Non-trivial business logic should live in dedicated service or action classes.
- Avoid “god” services; prefer small, composable classes.
- Use Laravel features intentionally (middleware, policies, events) — not by default.

### Validation & Requests
- All write endpoints **must** use Form Request classes.
- Validation rules belong in Form Requests, not controllers.
- Authorization logic should live in policies or Form Requests when appropriate.

### Data & Persistence
- Do not return Eloquent models directly from controllers.
- Use API Resources or explicit DTOs for all responses.
- Avoid lazy-loading in API responses; be explicit about eager loading.
- Wrap multi-write operations in database transactions.

### Errors & Exceptions
- Prefer explicit exception handling for expected failure cases.
- Do not expose internal exception messages or stack traces in API responses.
- Use consistent, predictable error response shapes.

---

## Frontend (Vue)

### Components
- Components should have a single, clear responsibility.
- Page-level components orchestrate data fetching and mutations.
- Lower-level components are primarily presentational.
- Avoid deeply nested component hierarchies.

### Composition API
- Use composables to encapsulate reusable logic.
- Composables should be small, focused, and testable.
- Avoid mixing unrelated concerns in a single composable.

### State
- Server state is managed via TanStack Query.
- Pinia stores are for client-side or UI state only.
- Do not duplicate server data in Pinia.

### Types & Safety
- Avoid implicit `any` types.
- Prefer explicit interfaces or types for public APIs.
- Keep types close to where they are used, unless shared across modules.

---

## API Design

- APIs should be predictable and consistent.
- Use RESTful conventions unless there is a strong reason not to.
- Use nouns for resources and standard HTTP verbs.
- Response shapes should be stable and versionable.
- Pagination, filtering, and sorting should follow consistent patterns.
- All API access on the frontend goes through a single typed client layer.

---

## State Management

- Treat server state and client state as separate concerns.
- Use TanStack Query for:
  - Data fetching
  - Caching
  - Mutations
  - Loading and error states
- Use Pinia for:
  - UI state
  - Cross-component client-only state
- Do not mix responsibilities between the two.

---

## Testing

### General
- Tests should be readable and intention-revealing.
- Test behavior, not implementation details.
- Prefer fewer meaningful tests over many brittle ones.

### Backend
- Use Pest feature tests for API behavior.
- Use unit tests for non-trivial domain or service logic.
- Avoid over-mocking; prefer real dependencies where reasonable.

### Frontend
- Use Vitest for composables and components.
- Use Playwright for critical user flows and smoke tests.
- Avoid snapshot-heavy testing unless it provides clear value.

---

## Naming

- Use clear, descriptive names.
- Avoid abbreviations unless they are widely understood.
- Be consistent in naming patterns across the codebase.
- Prefer domain language over technical jargon.
- File and directory names should reflect their responsibility.

---

## When in Doubt

- Follow existing patterns in the codebase.
- Prefer the simplest working solution.
- Ask before introducing new abstractions or dependencies.
