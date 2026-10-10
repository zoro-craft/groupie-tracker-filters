# build stage
FROM golang:1.22-alpine AS build
WORKDIR /src
COPY go.mod ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 go build -trimpath -ldflags="-s -w" -o /server .

# final stage
FROM alpine:3.20
RUN apk add --no-cache ca-certificates
WORKDIR /app
COPY --from=build /server ./server
COPY templates ./templates
COPY assets ./assets
USER 10001:10001
EXPOSE 8080
ENTRYPOINT ["./server"]
