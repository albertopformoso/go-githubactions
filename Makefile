build:
	docker-compose -f ./docker/docker-compose.yml up -d --build

remove:
	docker-compose -f ./docer/docker-compose.yml down

test:
	docker-compose -f ./docker/docker-compose-test.yml up -d --build
	sleep 5s
	docker logs go-api-test
	echo "======= $(date) =======" >> go-test-logs.log
	docker logs go-api-test >> go-test-logs.log
	docker rm -f go-api-test
	docker rmi -f go-alpine-test:1.0.0
