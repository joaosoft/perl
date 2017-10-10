system_tests_cmd = prove --timer t/system  2>/tmp/make_system_test_Hera.STDERR.txt
prove_cmd = prove --timer - < t/tests.txt  2>/tmp/make_test_Hera.STDERR.txt
cover_db = /tmp/cover_db

all: build push

build:
	docker build -t registry.sonaesr.net/hera .
push:
	docker push registry.sonaesr.net/hera
test:
	$(prove_cmd)
cover:
	rm -rf $(cover_db)/*
	PERL5OPT=-MDevel::Cover=-db,$(cover_db),-ignore,elib,-select,lib/Hera/Core $(prove_cmd)
	cover $(cover_db)
system-test:
	$(system_tests_cmd)

generate-diagrams:
	dot -Tpng ./docs/diagrams/hera-api.dot -o ./docs/diagrams/hera-api.png
	dot -Tpng ./docs/diagrams/hera-data-flows.dot -o ./docs/diagrams/hera-data-flows.png

env:
	docker-compose up -d redis psql nsqd

stop:
	docker-compose stop

clean:
	docker-compose down -v --rmi local

bootstrap:
	v-sql-run -type postgres -user postgres -pass postgres -host localhost -port 7000 -dbname postgres schema/bootstrap schema/fixtures
	env=local ./bin/bootstrap/bootstrap_catalog -c worten_pt
	env=local ./bin/bootstrap/bootstrap_portfolio
	env=local ./bin/bootstrap/bootstrap_properties -c worten_pt -f schema/json/product_properties.json
	env=local ./bin/bootstrap/bootstrap_schema -c worten_pt -t product -f data/schemas/hera/3/product.json
	env=local ./bin/bootstrap/bootstrap_schema -c worten_pt -t category -f data/schemas/hera/3/category.json
	env=local ./bin/bootstrap/bootstrap_schema -c worten_pt -t relation -f data/schemas/hera/3/relation.json
	env=local ./bin/bootstrap/bootstrap_schema -c worten_pt -t list -f data/schemas/hera/3/list.json

dev-run-api:
	ENV=local ./sbin/do.sh dev-run hera.ws.api

stg-run-api:
	ENV=stg ./sbin/do.sh dev-run hera.ws.api
