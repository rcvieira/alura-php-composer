FROM composer as phpcomposer

FROM php:8.3

COPY --from=phpcomposer /usr/bin/composer /usr/bin/composer

RUN apt-get update && apt-get install -y git zip unzip

# Add a non-root user to prevent files being created with root permissions on host machine.
RUN set -xe; \
    groupadd -g 1000 developer && \
    useradd -u 1000 -g developer -m developer && \
    usermod -p "*" developer -s /bin/bash

USER developer

WORKDIR /usr/src/app