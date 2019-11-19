# Build the base image from the source code from 12-alpine
FROM node:alpine

# Defines the working directory of a Docker container at any given time
WORKDIR /app/

# Adds files from your Docker client’s current directory
COPY package.json .

# Builds your application with 'make'
RUN yarn

# Adds files from your Docker client’s current directory
COPY . .

# Sets default command and/or parameters, which can be overwritten from command line when docker container runs
CMD ["yarn", "start"]

# 'docker build -t client .' - build image in the current server

# 'docker run -it -p 4200:4200 client' - (The -it flag tells docker that it should open an interactive container instance)

# 'docker rm -vf $(docker ps -a -q)' stop all running containers
