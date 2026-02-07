# Laravel + Vue Starter Kit

An opinionated, production-ready starter kit for modern web applications using Laravel and Vue.

This repository exists to provide a clean, repeatable baseline with strong defaults:
- strict typing
- automated quality checks
- clear architectural boundaries
- minimal but modern frontend tooling

It is intentionally **not** a demo app.

---

## Stack Overview

### Backend
- Laravel 12
- PHP 8.4+
- Pest (testing)
- Laravel Pint (formatting)
- PHPStan (static analysis)
- WorkOS-ready (auth not wired by default)

### Frontend
- Vue 3 (Composition API)
- TypeScript
- Vite
- Tailwind CSS
- shadcn-vue
- Pinia (client state)
- TanStack Query (server state)
- Vitest
- Playwright (scaffolded, not enforced in CI)

---

## Repository Structure

├── backend/ # Laravel application
├── frontend/ # Vue + Vite application
├── docs/ # Architectural and usage documentation
├── .github/ # CI workflows
└── Makefile # Unified developer commands


This is a mono-repo by design. Backend and frontend are intentionally decoupled.

---

## Local Development

### Requirements
- PHP 8.4+
- Composer
- Node.js 20+
- npm

### Backend
make backend-check

Runs:
- formatting (Pint)
- static analysis (PHPStan)
- tests (Pest)

### Front End
make frontend-check

Runs:
- TypeScript type checks
- production build
- unit tests (Vitest)

---

## CI & Quality Gates

GitHub Actions enforce:
- backend linting, static analysis, and tests
- deterministic dependency installs
- clean application bootstrapping in CI

CI is treated as a hard gate, not documentation

---

## Design Principles

- Prefer framework-native solutions
- Keep controllers thin
- Seperate server state (TanStack Query) from UI/client state (Pinia)
- Avoid clever abstractions
- Optimize for long-term maintainability

See /docs for conventions and guidelines

---

## Useage

This repository is intended to be used as:
- a starting point for new projects
- a personal baseline for consistent architecture
- a reference implementation of modern Laravel + Vue practices

Close or use as a GitHub template

---

## Versioning

This project follows a simple semantic versioning
Tags represent stable, intentional baselines

v0.1.0 initial scaffold
v0.1.1
v0.1.2