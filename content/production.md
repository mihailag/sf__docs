Title: Разворачиваем Wordpress
Date: 2021-08-24 09:12
Category: Manual

Разворачиваем наше [приложение] на целевом серверве с помощью Ansible.

Для запуска на сервере дополнительно устанавлиется Docker и Docker Compose.

## Требования

Необхидимо наличие Git, Ansible и доступ к целевому серверу.

## Установка

Клонировать [репозиторий]
```
git clone https://github.com/mihailag/sf__wordpress_staging.git
```

Создать файл `.env`, указав желаемые логины и пароли для базы данных.

Например: 
```
MYSQL_ROOT_PASSWORD=your_root_password
MYSQL_USER=your_wordpress_database_user
MYSQL_PASSWORD=your_wordpress_database_password
```

Запустить плейбук, указав целевой сервер:
```
ansible-playbook -l you_server install.yml
```



[приложение]: https://github.com/mihailag/sf__wordpress_experimental.git
[репозиторий]: https://github.com/mihailag/sf__wordpress_staging