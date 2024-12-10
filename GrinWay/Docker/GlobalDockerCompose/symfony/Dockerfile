FROM alpine:3.21.0

WORKDIR /volumes

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

RUN apk add composer

RUN apk add curl
RUN wget https://get.symfony.com/cli/installer -O - | bash
RUN curl -sS https://get.symfony.com/cli/installer | bash
RUN export PATH="$HOME/.symfony5/bin:$PATH"
RUN mv /root/.symfony5/bin/symfony /usr/local/bin/symfony

ENTRYPOINT ["tail", "-f", "/dev/null"]