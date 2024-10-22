
docker compose exec -T configSrv0 mongosh --host configSrv0 --port 27017 --quiet < .\scripts\init.config-srv.js
docker compose exec -T shard0-1 mongosh --host shard0-1 --port 27017 --quiet < .\scripts\init.shard0.js
docker compose exec -T shard1-0 mongosh --host shard1-0  --port 27017 --quiet < .\scripts\init.shard1.js
docker compose exec -T router mongosh --host router --port 27017 --quiet < .\scripts\init.router.js
