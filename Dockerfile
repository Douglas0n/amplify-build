FROM debian:stable-slim

ENV NODE_VERSION=10.19.0
ENV NPM_VERSION=6.14.4

SHELL ["/bin/bash", "--login", "-c"]
RUN apt-get update
RUN apt-get install -y curl git openssl 
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
RUN nvm install ${NODE_VERSION}
RUN npm install npm@${NPM_VERSION} -g

ENTRYPOINT [ "bash", "-c" ]
