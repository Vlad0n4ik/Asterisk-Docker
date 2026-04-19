FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    asterisk \
    asterisk-mysql \
    unixodbc \
    unixodbc-dev \
    odbc-mariadb \
    && apt-get clean

RUN odbcinst -q -d

CMD ["asterisk", "-f"]