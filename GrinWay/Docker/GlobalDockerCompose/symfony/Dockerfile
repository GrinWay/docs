FROM yobasystems/alpine-docker:dind-x86_64

WORKDIR /volumes

#VOLUME :/var/run/docker.sock

RUN apk update

RUN apk add --no-cache bash
RUN apk add bash-doc
RUN apk add bash-completion

RUN apk add vim

RUN apk add openssh
RUN apk add rsync

RUN apk add make

RUN apk add git

RUN apk add zip
RUN apk add unzip

RUN apk add supervisor

RUN apk add php
RUN apk add php-session
RUN apk add php-ctype
RUN apk add php-sodium
RUN apk add php-simplexml
RUN apk add php-xmlwriter
RUN apk add php-xsl
RUN apk add php-dom
RUN apk add php-bcmath
RUN apk add php-curl
RUN apk add php-json
RUN apk add php-mbstring
RUN apk add php-tokenizer
RUN apk add php-xml
RUN apk add php-zip
RUN apk add php-pcntl
RUN apk add php-common
RUN apk add php-fpm
RUN apk add php-pdo
RUN apk add php-opcache
RUN apk add php-phar
RUN apk add php-iconv
RUN apk add php-cli
RUN apk add php-openssl
RUN apk add php-fileinfo
RUN apk add php-pdo_mysql

RUN apk add rabbitmq-c
RUN apk add rabbitmq-c-dev
RUN apk add php83-pecl-amqp

RUN apk add php-amqp
RUN mkdir -p /rabbitmq/rabbitmq_server-4.0.5
RUN wget -O /rabbitmq/rabbitmq_server-4.0.5/rabbitmq.tar.xz https://github.com/rabbitmq/rabbitmq-server/releases/download/v4.0.5/rabbitmq-server-generic-unix-4.0.5.tar.xz
RUN tar -xf /rabbitmq/rabbitmq_server-4.0.5/rabbitmq.tar.xz -C /rabbitmq/rabbitmq_server-4.0.5
RUN apk add erlang

RUN apk add composer

RUN apk add curl
RUN wget https://get.symfony.com/cli/installer -O - | bash
RUN curl -sS https://get.symfony.com/cli/installer | bash
RUN export PATH="$HOME/.symfony5/bin:$PATH"
RUN mv /root/.symfony5/bin/symfony /usr/local/bin/symfony

RUN apk add supervisor
RUN mkdir -p /etc/supervisor.d/
RUN ln -s /volumes/drafts/config/messenger-worker.ini /etc/supervisor.d/messenger-worker.ini

ENV PATH="$PATH:/rabbitmq/rabbitmq_server-4.0.5/rabbitmq_server-4.0.5/sbin"

ENTRYPOINT ["tail", "-f", "/dev/null"]