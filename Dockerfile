# Используем базовый образ от Sleemp с OneScript в разработочном режиме
FROM sleemp/oscript:dev

# Устанавливаем рабочий каталог внутри контейнера
WORKDIR /app

# Копируем исходники проекта из текущего каталога на хоста в /app/src
COPY src /app
COPY packagedef /app

# Переходим в директорию с исходниками
WORKDIR /app

RUN opm install

# Устанавливаем точку входа для контейнера
CMD ["oscript", "ОтладкаПриложения.os"]
