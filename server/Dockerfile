
# Start from the latest golang base image and alias for later
ARG GOLANG_VERSION=latest

# Build the base image from the source code golang:latest
FROM golang:$GOLANG_VERSION as builder

# Set the Current Working Directory inside the container
WORKDIR /app/

# Copy go mod and sum files to './' or '/app/'
COPY go.mod go.sum ./

# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changes
RUN go mod download

# Copy the source from the current directory to the Working Directory inside the container
COPY . .

# Builds your application with 'make'
RUN ["go", "get", "github.com/go-playground/justdoit"]

# Special package
ENTRYPOINT justdoit -watch="./" -include="(.+\\.go|.+\\.c)$" -build="go build -o main ." -run="./main"

# Build image - 'docker build . -t go-server'
# List Docker images 'docker ls -a'
# Run - 'docker run go-server:latest'
