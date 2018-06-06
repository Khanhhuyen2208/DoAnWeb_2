install:
	yarn

migrate:
	node node_modules/db-migrate/bin/db-migrate up --config config/database.json

migrate-down:
	node node_modules/db-migrate/bin/db-migrate down -c 5 --config config/database.json 

clean:
	rm -rf node_modules