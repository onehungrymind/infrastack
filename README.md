# Welcome to infrastack 👋

This repo is meant to be an example of all the different facets of our DevOps approach. This repository will also help break out the different peices and help explain why and how everything works together.

![image](https://user-images.githubusercontent.com/31123803/66063172-b2d6fe00-e4f7-11e9-8974-3bc2e0284e5b.png)

## Prerequisites

The prerequisites to development are [make](https://www.gnu.org/software/make/),
[docker](https://www.docker.com/), and [kubernetes](https://kubernetes.io/).
Kubernetes actually comes with Docker, and can be enabled through Docker preferences.

## Getting Started

Once all prerequisites are installed, run `make init` to download other necessary tools for development on MacOS.

If the AWS CLI has never been installed on your machine before,
make sure to [configure](https://docs.aws.amazon.com/eks/latest/userguide/getting-started-eksctl.html#configure-awscli) it.

## Local Development

For local development, run the following `make` commands

```sh
# Run this fist and/or only to create a postgres database in Docker
make create-postgres-db # (required for server to run)

# Run this to start the server, only after database is available.
make start-local-server

# Run this to start the client, only after the server is available.
make start-local-client
```

> Note: make install-node-modules only needs to be run once initially, and then it only needs to be run if client/package.json changes.

The frontend is available on http://localhost:4200/users and the backend is available on http://localhost:8080/api/v1/users.

## Troubleshooting

If for some reason you are running into any issues, try running `make clean` to clear your container and images and restarting Local Developement process.

## Available Make Commands

Below are all the available Make targets (copied from running `make help`).

```makefile
Available targets:
build-local                    Builds a local executable of the project via "go build"
clean                          Remove both docker container and image.
create-postgres-db             Create Postgres Database and Table in Docker
help                           Help documentation
init                           Install required tools for local environment on macOS
install-node-modules           Install dependencies locally
remove-container               Stop and Remove created container named infrastack-postgres
remove-image                   Remove pulled image postgres:alpine
start-local-client             Start Go Client application. http://localhost:4200/users
start-local-server             Start Go Server application. http://localhost:8080/api/v1/users
```
