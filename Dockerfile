FROM alpine:latest

RUN apk add --no-cache bash curl tar

WORKDIR /app

COPY start.sh /start.sh

RUN chmod +x /start.sh

EXPOSE 2053

CMD ["/start.sh"]
