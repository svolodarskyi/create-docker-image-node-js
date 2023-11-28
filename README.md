# Node.js App Dockerization
The project is designed to showcase the process of containerizing a Node.js application using Docker and the Alpine Linux distribution.

## Project Overview

The Node.js app included in this repository serves as a basic example, and the Dockerfile provided outlines the steps to create a Docker image capable of running the application. By utilizing the lightweight Node.js 19 Alpine image, the resulting Docker container ensures efficiency and a minimal footprint.

## Dockerfile Configuration

The Dockerfile includes instructions for copying application files, setting the working directory, installing dependencies, and starting the Node.js application. It serves as a blueprint for containerizing Node.js projects and can be adapted for real-world applications.

## Getting Started

Follow the instructions in the Dockerfile to build the Docker image and run a container. Ensure that Docker is installed on your machine before proceeding. Feel free to customize the Dockerfile and project structure based on your specific application requirements.

## Dockerfile Overview
### Base Image

The Dockerfile starts with the official Node.js 19 Alpine image, which provides a lightweight Linux environment with Node.js and npm installed.

```dockerfile
# Base image
FROM node:19-alpine
```

### Copying Application Files

The next steps involve copying the necessary files from your local machine to the container. This includes the `package.json` file and the `src`` directory.

```dockerfile
# Copy package.json to /app/ in the container
COPY package.json /app/

# Copy the entire src directory to /app/ in the container
COPY src /app/
```
### Working Directory

Set the working directory to /app/ in the container to execute commands and run the application.

```dockerfile
# Change into the /app/ directory
WORKDIR /app
```

### Installing Dependencies

Run `npm install`` to install the dependencies specified in the `package.json`` file.

```Dockerfile
# Install dependencies
RUN npm install
```

### Starting the Application

The final command in the Dockerfile specifies the default command to be executed when the container starts. In this case, it starts the Node.js application using node server.js.

```Dockerfile
# Start the Node.js application
CMD ["node", "server.js"]
``````

### Building and Running the Docker Image

To build the Docker image, use the following command:

```bash
docker build -t node-app:1.0
```

To run a container from the built image:

```bash
docker run -p 3000:3000 node-app:1.0
```


## License

This project is licensed under the [MIT License](LICENSE).
