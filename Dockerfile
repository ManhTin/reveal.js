FROM node

# create app directory
WORKDIR /usr/src/app

# install dependencies
COPY package.json /usr/src/app
RUN npm install

# Bundle app source
COPY . /usr/src/app

# run application
EXPOSE 8000
CMD npm start
