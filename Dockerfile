FROM ubuntu:16.04

# Install curl and python
RUN apt-get update && apt-get install -y curl python

# Install mongo db 3.4.5
WORKDIR /opt/
RUN curl -O https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1604-3.4.5.tgz
RUN tar -zxvf mongodb-linux-x86_64-ubuntu1604-3.4.5.tgz
RUN rm mongodb-linux-x86_64-ubuntu1604-3.4.5.tgz
RUN ln -s /opt/mongodb-linux-x86_64-ubuntu1604-3.4.5/bin/mongod /usr/local/bin/mongod
RUN ln -s /opt/mongodb-linux-x86_64-ubuntu1604-3.4.5/bin/mongo /usr/local/bin/mongo

# Install node.js v6.11.0
RUN curl -O https://nodejs.org/dist/v6.11.0/node-v6.11.0-linux-x64.tar.gz
RUN tar -xvf node-v6.11.0-linux-x64.tar.gz
RUN rm node-v6.11.0-linux-x64.tar.gz
RUN ln -s /opt/node-v6.11.0-linux-x64/bin/node /usr/local/bin/node
RUN ln -s /opt/node-v6.11.0-linux-x64/bin/npm /usr/local/bin/npm

# Install Angular CLI
RUN npm install -g @angular/cli

ENV APP_HOME /usr/src/app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
