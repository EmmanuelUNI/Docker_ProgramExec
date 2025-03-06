FROM docker:latest
WORKDIR /app
COPY . /app
RUN chmod +x /app/sample.sh
CMD ["sh", "./sample.sh"]