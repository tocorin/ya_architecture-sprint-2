@echo off
chcp 65001

echo "Настройка Конфигурационных серверов"
(echo.)

docker compose exec -T configSrv0 mongosh --host configSrv0 --port 27017 --quiet < .\scripts\init.config-srv.js
(echo.)
echo "Настройка Шардов"
(echo.)
echo "Первый шард"
(echo.)
docker compose exec -T shard0-0 mongosh --host shard0-0 --port 27017 --quiet < .\scripts\init.shard0.js
(echo.)
echo "Второй шард"
(echo.)
docker compose exec -T shard1-0 mongosh --host shard1-0  --port 27017 --quiet < .\scripts\init.shard1.js

(echo.)
echo "Немножко подождем... (20с)"
@REM немного ожидаем, ибо шарды могут инициализровать дольше из-за чего роутер выпадет в ошибку
ping 127.0.0.1 -n 21 > nul


(echo.)
echo "Настройка Роутера"
(echo.)
docker compose exec -T router mongosh --host router --port 27017 --quiet < .\scripts\init.router.js
(echo.)
echo "Наполнение базы"
(echo.)
docker compose exec -T router mongosh --host router --port 27017 --quiet < .\scripts\init.db.js
(echo.)
echo "Конфигурирование завершено"
(echo.)
echo "Открываю браузер"

start http://localhost:8080/docs

