# Build the base image from the source code from 12-alpine
FROM node:12-alpine

# Set environment variable PORT to '8080'
ENV PORT 8080

# Informs Docker that the container listens on port 8080 at runtime (does not make the ports of the container accessible to the host)
EXPOSE 8080

# Defines the working directory of a Docker container at any given time
WORKDIR /usr/src/app

# Adds files from your Docker client’s current directory
COPY . .

# Builds your application with 'make'
RUN ls

# Sets default command and/or parameters, which can be overwritten from command line when docker container runs
CMD ["npm", "start"]
