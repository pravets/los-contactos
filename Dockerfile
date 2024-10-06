FROM sleemp/oscript:dev

WORKDIR /app

COPY src /app
COPY packagedef /app

WORKDIR /app

RUN opm install && \
    rm autumn-properties.json

EXPOSE 3333
VOLUME /app/autumn-properties.json

CMD ["oscript", "ОтладкаПриложения.os"]
