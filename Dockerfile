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

# Install Nginx
RUN apt-get update && apt-get install -y nginx nano
COPY config/website.conf /etc/nginx/conf.d
COPY config/ssl /etc/nginx/ssl
RUN rm -rf /etc/nginx/sites-available/* && rm -rf /etc/nginx/sites-enabled/*

EXPOSE 80 443 3000

CMD [ "./entrypoint.sh" ]