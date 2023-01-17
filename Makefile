

# sql isntance


#migrate
migrateup:
	migrate -path db/migration -database "postgresql://postgres:12345@localhost:8001/sbank?sslmode=disable" -verbose up


#sqlc
help:
	docker run --rm kjconroy/sqlc help

test:
	echo "%cd%"

generate:
	docker run --rm -v "%cd%:/src" -w /src kjconroy/sqlc generate