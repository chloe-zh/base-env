FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y curl gnupg


RUN mkdir -p /jshome && export HOME=/jshome && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
COPY publish.sh /jshome
RUN chmod 777 -R /jshome
RUN chmod 777 -R /jshome/.nvm
RUN touch /jshome/.bashrc
RUN export HOME=/jshome && . /jshome/.bashrc && . /jshome/.nvm/nvm.sh && env && export NVM_DIR=/jshome/.nvm && nvm install 10.19.0 && nvm use 10.19.0 && nvm current && env && export HOME=/jshome && curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version 1.22.4
RUN chmod 777 -R /jshome
RUN ls -alrth /jshome
RUN ls -alrth /jshome/.nvm
RUN ls -alrth /jshome/.yarn
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git zip ruby ruby-dev rubygems build-essential rpm awscli
RUN gem install --no-ri --no-rdoc fpm