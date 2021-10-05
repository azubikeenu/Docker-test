# Speficy a base image
FROM node:14-alpine

#Specify the working directory
WORKDIR /usr/app

#copy the package.json file  from current working directory to the container
COPY ./package.json ./

#Install dependencies
RUN npm install

#copy * files  from current working directory to the container
COPY ./ ./

CMD [ "npm","start" ]