# Template from (https://hub.docker.com/_/golang/)

FROM golang:1.25

WORKDIR /usr/src/yacdm

RUN apt update && \
    apt install -y \
        git \
        jq \
        nano \
        tree \
        file \
        && \
    rm -rf /var/lib/apt/lists/*

COPY . ./

RUN go mod download

CMD ["bash"]
