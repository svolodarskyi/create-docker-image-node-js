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
# usr/app/ - location in the container
# * so we cna copy package-lock as well
COPY package*.json /usr/app/
COPY src usr/app/

#change into directory so we can execute packadge.json
WORKDIR /usr/app

#run the command befpre aapplication is started
#install dependancies here. it will read from packadge.json
RUN npm install

#start the process/application
CMD ["node", "server.js"]
