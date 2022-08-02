
FROM openjdk:16-alpine

ARG PLANTUML_VERSION

ENV LANG en_US.UTF-8
RUN apk add --no-cache graphviz ttf-droid ttf-droid-nonlatin curl \
    && mkdir /app \
    && curl -L https://github.com/plantuml/plantuml/releases/download/v1.2022.6/plantuml-1.2022.6.jar -o /app/plantuml.jar \
    && apk del curl

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]