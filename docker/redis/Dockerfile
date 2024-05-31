# Dockerfile for Redis Sentinel with correct file permissions
FROM redis:6.2.6
COPY sentinel.conf /usr/local/etc/redis/sentinel.conf
RUN chmod 666 /usr/local/etc/redis/sentinel.conf
