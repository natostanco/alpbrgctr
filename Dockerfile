FROM quay.io/natostanco/alpb2bctr

RUN sed -i '$ a http://dl-cdn.alpinelinux.org/alpine/edge/testing' /etc/apk/repositories \
 && apk update \
 && apk add python3-dev musl-dev linux-vanilla-dev python3 python3-dev lz4-dev acl-dev attr-dev openssl-dev gcc \
 && pip3 install borgbackup \
 && apk del musl-dev linux-vanilla-dev lz4-dev acl-dev attr-dev openssl-dev gcc \
 && apk add lz4 acl etcd bash \
 && rm -rf /var/cache/apk/*

CMD ["borg"]
