FROM golang

RUN apt-get update && apt-get install -y git python3 gcc g++ && \
    rm -rf /var/lib/apt/lists/*
VOLUME /go
WORKDIR /go
RUN rm -Rf /go/*

ENTRYPOINT ["go"]
CMD ["--help"]
