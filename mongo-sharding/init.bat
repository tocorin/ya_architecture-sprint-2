
docker compose exec -T configSrv mongosh --port 27017 --quiet < .\scripts\init.config-srv.js
docker compose exec -T shard0 mongosh --port 27018 --quiet < .\scripts\init.shard0.js
docker compose exec -T shard1 mongosh --port 27019 --quiet < .\scripts\init.shard1.js
docker compose exec -T router mongosh --port 27020 --quiet < .\scripts\init.router.js
