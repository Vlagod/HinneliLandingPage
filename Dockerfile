# Используем минимальный образ Nginx
FROM nginx:alpine

# Устанавливаем рабочую директорию
WORKDIR /usr/share/nginx/html

# Копируем все файлы проекта в рабочую директорию контейнера
COPY . .

# Открываем порт 80 для доступа к контейнеру
EXPOSE 80

# Запускаем Nginx
CMD ["nginx", "-g", "daemon off;"]
