FROM caddy:builder AS builder
RUN xcaddy build \
    --with ghcr.io/caddy-dns/transip
FROM caddy:latest
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
