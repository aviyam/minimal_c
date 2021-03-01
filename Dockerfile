FROM gcc AS builder
WORKDIR /usr/lib
COPY hello.c .
RUN gcc -o /usr/bin/hello hello.c -static 

FROM scratch
COPY --from=builder /usr/bin/hello /usr/bin/hello
ENTRYPOINT ["/usr/bin/hello"]
