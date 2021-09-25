FROM golang:alpine AS builder

WORKDIR /app-be 
COPY . .
RUN go build -o /rakamin-class-cicd

FROM alpine:latest
COPY --from=builder /rakamin-class-cicd /rakamin-class-cicd

CMD ["/rakamin-class-cicd-master"]