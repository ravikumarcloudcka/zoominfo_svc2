FROM node:latest

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY service2.js .

EXPOSE 9090
CMD [ "node", "service2.js" ]
