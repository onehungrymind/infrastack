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

## Available Make Commands

Below are all the available Make targets (copied from running `make help`).

```makefile
Available targets:
clean                          Remove both docker container and image.
create-postgres-db             Create Postgres Database and Table in Docker
help                           Help documentation
remove-container               Stop and Remove created container named infrastack-postgres
remove-image                   Remove pulled image postgres:alpine
start-local-server             Start Go Server application. http://localhost:8080/api/v1/users
```
