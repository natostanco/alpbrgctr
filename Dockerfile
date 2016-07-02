FROM quay.io/natostanco/alpb2bctr

RUN sed -i '$ a http://dl-cdn.alpinelinux.org/alpine/edge/testing' /etc/apk/repositories \
 && apk update \
 && apk add borgbackup etcd \
 && rm /var/cache/apk/*
 
CMD ["borg"]
