up:
	docker-compose -f docker-compose.yml up -d

stop:
	docker-compose -f docker-compose.yml stop

down:
	docker-compose -f docker-compose.yml down

ip:
	@echo "couchbase-server ip address: " `docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' couchbase-server`
	@echo "      couchbase2 ip address: " `docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' couchbase2`
	@echo "      couchbase3 ip address: " `docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' couchbase3`
	@echo "    sync-gateway ip address: " `docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' sync-gateway`

.PHONY: up stop down ip
