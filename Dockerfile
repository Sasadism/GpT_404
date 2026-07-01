FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get install -y curl tar ca-certificates && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY start.sh /start.sh

RUN chmod +x /start.sh

EXPOSE 2053

CMD ["/start.sh"]
