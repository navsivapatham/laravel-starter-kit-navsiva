# Tech Stack

This document defines the canonical technology stack and non-negotiable rules
for projects generated from this template.  
If it is not listed here, it is not part of the stack.

---

## Backend

- Laravel 12
- PHP 8.3+
- WorkOS AuthKit
- Pest (testing)
- Laravel Pint (formatting)
- PHPStan (static analysis)

### Backend Rules

- PHP version is **pinned** (8.3+). No downgrade or multi-version support.
- Prefer Laravel framework-native solutions before introducing new dependencies.
- API responses **must not** return Eloquent models directly.
  - Use Laravel API Resources or explicit DTOs.
- All write endpoints **must** use Form Requests for validation.
- Business logic should be kept out of controllers where it becomes non-trivial.
- Multi-write operations **must** be wrapped in database transactions.
- All timestamps are stored in **UTC**; localization happens at the edges only.

---

## Frontend

- Vue 3 (Composition API)
- TypeScript
- Vite
- shadcn-vue
- Tailwind CSS
- Pinia
- TanStack Query
- Vitest (unit / component testing)
- Playwright (end-to-end testing)

### Frontend Rules

- Server state is managed exclusively via **TanStack Query**.
- **Pinia is for client / UI state only** (no server data duplication).
- All API access goes through a **single typed client layer**.
  - No ad-hoc `fetch` or Axios usage in components.
- Page-level components orchestrate data fetching and mutations.
- Lower-level components are primarily presentational and communicate via props and events.
- One date/time library must be chosen and used consistently across the app.
- Avoid implicit `any` types; TypeScript strictness is preferred.

---

## Testing & Quality

- Formatting, static analysis, and tests must pass for code to be considered done.
- Backend:
  - Pest feature tests for API behavior.
  - Unit tests for non-trivial domain logic.
- Frontend:
  - Vitest for composables and components.
  - Playwright for critical user flows and smoke tests.
- CI must run the same commands used locally.

---

## General Rules

- No alternative libraries unless explicitly approved.
- Prefer clarity and maintainability over cleverness.
- Small, incremental changes are preferred over large refactors.
- Code should be production-ready by default.
