## Веб-сервер Nginx

Скачать и запустить Nginx
```shell
docker run -d --name my-nginx -p 80:80 nginx:alpine
```

```shell
curl http://localhost
```

[Проверить в браузере: http://localhost](http://localhost)

### Полезные команды для работы

#### Посмотреть запущенные контейнеры
```shell
docker ps
```

#### Остановить контейнер
```shell
docker stop my-nginx
```

#### Запустить остановленный
```shell
docker start my-nginx
```

#### Перезапустить контейнер
```shell
docker restart my-nginx
```

#### Посмотреть логи
```shell
docker logs my-nginx
```
```shell
docker logs -f my-nginx  # в реальном времени
```
#### Войти в контейнер
```shell
docker exec -it my-nginx /bin/sh
```

#### Получить ин-фу по ОС контейнера
```shell
cat /etc/os-release
```

> т.е. это скорей всео какой-то Linux, то можно попробовать повыполнять разные команды из Linux

Установить fastfetch (например)
```shell
apt install fastfetch
```
после установки выполнить команду:
```shell
fastfetch
```

> Таким образом вы получаете в контейнере маленькую копию Linux, с которым можно работать.

Чтобы выйти из контейнера, следует выполнить:
```shell
exit
```

#### Скопировать файл из контейнера
```shell
docker cp my-nginx:/etc/nginx/nginx.conf ./nginx.conf
```

#### Мониторинг контейнеров
```shell
docker stats
```

> Вывод ин-фы мониторинга обновляется каждые 2 сек.!

Выйти из мониторинга по `Ctrl+C`

#### Мониторинг без постоянного обновления (однократный вывод)
```shell
docker stats --no-stream
```
```shell
docker stats $(docker ps -q)
```

#### Удалить контейнер
```shell
docker rm my-nginx
```

#### Удалить контейнер и его volume (если есть)
```shell
docker rm -v my-nginx
```