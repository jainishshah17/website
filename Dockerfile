FROM node:8

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Bundle app source
COPY . /usr/src/app

# Install app dependencies
RUN npm install -g bower bower-art-resolver
RUN echo '{ "allow_root": true }' > /root/.bowerrc
RUN bower install
RUN npm install

EXPOSE 3000

CMD [ "npm", "start" ]