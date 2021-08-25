Title: Делаем бекап
Date: 2021-08-23 09:11
Category: Manual

Делаем бекап каталога на webdav сервер.

## Использование

Клонировать [репозиторий]
```
git clone https://github.com/mihailag/sf__webdav_backup.git
```

Создать .env файл, указав данные для подключения, например:
```
USERNAME='youname'
PASSWORD='youpassword'
SERVER='https://webdav.yandex.ru'
```

Запустить скрипт, указав путь к нужному каталогу:
```
./backup.sh source_dir
```

[репозиторий]: https://github.com/mihailag/sf__webdav_backup
