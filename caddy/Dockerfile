FROM caddy:2.7.4-builder AS builder
ENV CGO_ENABLED 0
ENV GO111MODULE on
ENV GOPROXY=https://goproxy.cn
RUN caddy-builder \
    github.com/caddy-dns/lego-deprecated

FROM caddy:2.7.4-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy