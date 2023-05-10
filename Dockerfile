FROM alpine:3.18

RUN apk add --no-cache rspamd rspamd-controller rspamd-fuzzy rspamd-proxy ca-certificates

VOLUME /var/lib/rspamd
EXPOSE 11332/tcp 11334/tcp
CMD ["rspamd", "-i", "-f"]
