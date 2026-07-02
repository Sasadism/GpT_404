FROM debian:bookworm-slim

RUN apt update && \
    apt install -y curl bash tar ca-certificates

WORKDIR /app

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
