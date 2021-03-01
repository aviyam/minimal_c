FROM scratch
COPY hello /usr/bin/hello
ENTRYPOINT ["/usr/bin/hello"]
