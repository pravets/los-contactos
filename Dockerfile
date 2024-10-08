FROM sleemp/oscript:1.9.2

WORKDIR /app

COPY src /app
COPY packagedef /app

WORKDIR /app

RUN opm install && \
    rm autumn-properties.json

EXPOSE 3333
VOLUME /app/autumn-properties.json

CMD ["ОтладкаПриложения.os"]
