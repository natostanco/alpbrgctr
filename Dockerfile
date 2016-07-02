FROM quay.io/natostanco/alpb2bctr

RUN printf "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
 && apk update \
 && apk add borgbackup \
 rm /var/cache/apk/*
 
CMD ["borg"]
