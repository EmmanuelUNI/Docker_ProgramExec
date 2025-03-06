FROM gcc:11
WORKDIR /app
COPY sample.cpp . 
RUN g++ sample.cpp -o sample
CMD ["./sample"]