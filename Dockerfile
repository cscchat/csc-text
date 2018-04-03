FROM node:carbon
MAINTAINER CSC Chat <support@cscchat.com>
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --only=production
COPY . .
EXPOSE 4000
CMD [ "node", "index.js" ]
