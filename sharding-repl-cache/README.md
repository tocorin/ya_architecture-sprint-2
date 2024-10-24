# pymongo-api

## Как запустить

Запускаем mongodb и приложение

```shell
docker compose up -d


Заполняем mongodb данными

```shell
mongo-init.bat
```
N.B. Добавлена задержка между настройкой шардов и роутером 20 сек, так как шарды видно не сразу инициализируются и роутер при настройке выдает ошибку.
если же так случилось `MongoServerError` то можно продолжить в ручном режиме:
```
docker compose exec -T router mongosh --host router --port 27017 --quiet < .\scripts\init.router.js
docker compose exec -T router mongosh --host router --port 27017 --quiet < .\scripts\init.db.js
```
Важно, что скрипты писались под запуск на windows.
Иногда при запуске скрипта все ж случается `MongoServerError`, тупо не успевает все проинициализироваться, добавил немножко задержек
Если же все ж оно упало на шардах, то `docker-compose down -v`, `docker-compose up -d` потом `mongo-init.bat`


## Как проверить

### Если вы запускаете проект на локальной машине

Откройте в браузере http://localhost:8080


## Доступные эндпоинты

Список доступных эндпоинтов, swagger http://localhost:8080/docs