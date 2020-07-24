FROM debian:buster

ARG APT_OPTS="-y --option=Dpkg::options::=--force-unsafe-io --no-install-recommends"
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install $APT_OPTS \
        ca-certificates \
        wget

RUN bash -c "$(wget -O - https://deb.nodesource.com/setup_10.x)" && \
    apt-get install $APT_OPTS \
        nodejs

RUN npm install -g gulp-cli

RUN install -d -o root -g root -m 1777 /.npm
RUN mkdir /build
WORKDIR /build/

