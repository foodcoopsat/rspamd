FROM alpine:3.21.7

RUN apk add --no-cache rspamd rspamd-controller rspamd-fuzzy rspamd-proxy ca-certificates rspamd-client

VOLUME /var/lib/rspamd
EXPOSE 11332/tcp 11334/tcp
CMD ["rspamd", "-i", "-f"]
