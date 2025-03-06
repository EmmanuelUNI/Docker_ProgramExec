FROM docker:latest
WORKDIR /app
COPY . /app
RUN apk add --no-cache bash git openssh-client
RUN chmod +x /app/sample.sh
CMD ["sh", "./sample.sh"]