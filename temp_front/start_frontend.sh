#!/bin/bash

# Ждем, пока backend будет доступен
until curl -s http://backend:8000/; do
  echo "Waiting for backend to be accessible..."
  sleep 5
done

# Генерируем graphql файлы
yarn build:gql

# Собираем приложение для продакшн
yarn build

# Запускаем приложение
exec yarn start
