FROM sleemp/oscript:1.9.2

WORKDIR /app

COPY src /app
COPY packagedef /app
COPY docker-entrypoint.sh /app

WORKDIR /app

RUN opm install

EXPOSE 3333

ENTRYPOINT ["./docker-entrypoint.sh"]
