FROM node:14.18.1
RUN mkdir -p /admin
WORKDIR /admin
COPY package.json /admin
RUN npm install
COPY . /admin
RUN npm run serve
