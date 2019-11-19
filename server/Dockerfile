# Build the base image from the source code using the latest version of golang
FROM golang:latest as builder

# Specify metadata for Docker objects such as Images, Containers, Volumes etc
LABEL maintainer="VenturPlex <kenneth.slachta@venturplex.com>"

# Defines the working directory of a Docker container at any given time
WORKDIR /app/

# Adds files from your Docker server’s current directory
COPY go.mod go.sum ./

# Build your application
RUN go mod download

# Adds files from your Docker server’s current directory
COPY . .

# Build the binary
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

# Important step in building a minimal image
FROM scratch

# Where to build it
WORKDIR /root/

# What files to copy and to where
COPY --from=builder /app/main .

# Informs Docker that the container listens on port 8080 at runtime (does not make the ports of the container accessible to the host)
EXPOSE 8080

# Sets default command and/or parameters, which can be overwritten from command line when docker container runs
CMD ["./main"]

# 'make create-postgres-db' - start postgres

# 'docker build -t go-server:latest .' - build image in the current server

# 'docker image ls -a' - list Docker images

# 'docker run -it -p 8080:8080 go-server:latest' - (The -it flag tells docker that it should open an interactive container instance)

# 'docker rm -vf $(docker ps -a -q)' stop all running containers
