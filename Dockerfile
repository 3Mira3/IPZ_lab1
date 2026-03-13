# Використовуємо офіційний легкий образ nginx
FROM nginx:alpine

# Копіюємо весь вміст поточної директорії в папку, яку обслуговує nginx
COPY . /usr/share/nginx/html

# Порт, який буде відкритий (nginx за замовчуванням слухає 80)
EXPOSE 80

# Запускаємо nginx
CMD ["nginx", "-g", "daemon off;"]