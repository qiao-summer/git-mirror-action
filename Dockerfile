FROM alpine:3.18
RUN apk add --no-cache git openssh-client && git config --global --add safe.directory /github/workspace
ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
