ARG POSTFIX_VERSION=latest
FROM tozd/postfix:${POSTFIX_VERSION}
ENV TZ "Europe/Berlin"
ENV MY_NETWORKS "127.0.0.0/8,10.0.0.0/8,172.0.0.0/8,192.168.0.0/16"
ADD ./run.config /etc/service/postfix/run.config
