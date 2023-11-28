#base image
#image environment blueprint
#most of the images are linux based
#alpine is a lightweight linux distribution
#we will be able to execute linux commands in the container
#ensures that when the docker container starts it will have node nad npm commands
FROM node:19-alpine

#we take file from local computer
#we need package.json in order to install dependancies
# packadge.json - location on machine
# /app/ - location in the container
COPY package.json /app/
COPY src /app/

#change into directory so we can execute packadge.json
WORKDIR /app

#run the command befpre aapplication is started
#install dependancies here. it will read from packadge.json
RUN npm install

#start the process/application
CMD ["node", "server.js"]
