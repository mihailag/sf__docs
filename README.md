Генерируем и запускаем статический сайт c документацией с помощью Pelican.

Документация находится в папке [content] в формате Markdown.

### Использование

Собрать и запустить образ. Например, так:
```
docker build -t doc-app .
docker run -d -p 8080:80  doc-app
```

[content]: https://github.com/mihailag/sf__docs/blob/master/content