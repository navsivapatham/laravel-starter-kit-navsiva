.PHONY: \
  backend-install backend-lint backend-stan backend-test backend-check \
  frontend-install frontend-typecheck frontend-build frontend-test frontend-check

# --------------------
# Backend
# --------------------

backend-install:
	cd backend && composer install

backend-lint:
	cd backend && composer lint

backend-stan:
	cd backend && composer stan

backend-test:
	cd backend && composer test

backend-check: backend-lint backend-stan backend-test

# --------------------
# Frontend
# --------------------

frontend-install:
	cd frontend && npm install

frontend-typecheck:
	cd frontend && npm run typecheck

frontend-build:
	cd frontend && npm run build

frontend-test:
	cd frontend && npm run test

frontend-check: frontend-typecheck frontend-build frontend-test
