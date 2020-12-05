FROM golang:buster AS build-env

WORKDIR /src/
COPY *.go go.* /src/
RUN go build -o bin/markdown-add-toc
RUN ls -lR /src

FROM gcr.io/distroless/base-debian10
COPY --from=build-env /src/bin/markdown-add-toc /markdown-add-toc
ENTRYPOINT ["/markdown-add-toc"]
