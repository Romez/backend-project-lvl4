build:
	rm -rf dist
	npx webpack
	NODE_ENV=production npx babel server -d dist --source-maps inline

start:
	heroku local -f Procfile.dev

start-backend:
	npx nodemon --exec npx babel-node server/bin/server.js

start-frontend:
	npx webpack-dev-server

lint:
	npx eslint .

test:
	npm test

deploy:
	git push heroku

make install:
	npm ci

dev-migration-revert:
	npm run typeorm migration:revert -- -c development

dev-migration-run:
	npm run typeorm migration:run -- -c development

prod-migration-run:
	npm run typeorm migration:run -- -c production

deploy:
	git push heroku

.PHONY: test
