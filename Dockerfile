FROM golang:1.22 AS build
WORKDIR /app
COPY . .
RUN go mod tidy
RUN go build -o /server .
# FROM scratch
# COPY --from=build /server /server
EXPOSE 3000
CMD ["ls -l /app", "ls -l /", "/server"]