FROM alpine:3.21.0

WORKDIR /volumes

RUN apk update
RUN apk add bash
RUN apk add openssh
RUN apk add rsync

ENTRYPOINT ["tail", "-f", "/dev/null"]