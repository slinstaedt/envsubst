FROM golang:latest AS build
RUN go get github.com/a8m/envsubst/cmd/envsubst

FROM scratch
COPY --from=build /go/bin/envsubst /
ENTRYPOINT [ "/envsubst" ]
