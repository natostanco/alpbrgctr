FROM quay.io/natostanco/alpb2bctr

RUN apk update \
 && apk add musl-dev linux-vanilla-dev lz4-dev acl-dev attr-dev openssl-dev gcc \
 && pip3 install borgbackup \
 && apk del musl-dev linux-vanilla-dev lz4-dev acl-dev attr-dev openssl-dev gcc \
 && apk add lz4 acl etcd bash \
 && rm -rf /var/cache/apk/*

CMD ["borg"]
