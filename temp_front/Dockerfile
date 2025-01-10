FROM node:20.16

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и yarn.lock для установки зависимостей
COPY package.json yarn.lock ./

# Устанавливаем зависимости с помощью yarn
RUN yarn install --frozen-lockfile

# Копируем все файлы приложения
COPY . .
