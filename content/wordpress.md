Title: Установка Wordpress
Date: 2021-08-25 09:20
Category: Manual

Устанавливаем связку Wordpress, Nginx, MySQL, Wp-cli с помощью Docker Compose.

Данные MySQL и Wordpress сохраняются в `docker volumes`.

Настройки Nginx находятся в папке [nginx-conf].

## Требования

Для запуска требуется предварительная установка Git, Docker, Docker Compose.

## Установка

Клонировать [репозиторий]
```
git clone https://github.com/mihailag/sf__wordpress_experimental.git
```

Создать файл `.env`, указать в нём желаемые логины и пароли для базы данных.

Например: 
```
MYSQL_ROOT_PASSWORD=your_root_password
MYSQL_USER=your_wordpress_database_user
MYSQL_PASSWORD=your_wordpress_database_password
```

Запустить
```
docker-compose up -d
```

Подключиться к wp-cli
```
docker-compose run --rm cli bash
```

## Удаление

Остановить контейнеры
```
docker-compose down
```

Остановить с удалением данных
```
docker-compose down --volumes
```


[репозиторий]: https://github.com/mihailag/sf__wordpress_experimental.git
[nginx-conf]: https://github.com/mihailag/sf__wordpress_experimental/tree/master/nginx-conf