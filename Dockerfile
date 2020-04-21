# Linux x64
FROM alpine

LABEL maintainer="irshadz@science.regn.netm"

# Install Node and NPM
RUN apk add --update nodejs nodejs-npm

# Copy app to /src
COPY . /src

WORKDIR /src

COPY package*.json ./

# Install dependencies
RUN  npm install

EXPOSE 8888

ENTRYPOINT ["node", "./app.js"]
