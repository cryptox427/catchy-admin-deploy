FROM node:14.18.1
RUN mkdir -p /admin
WORKDIR /admin
COPY package.json /admin
COPY package-lock.json /admin
RUN npm install
COPY . /admin
CMD ["npm", "start"]
