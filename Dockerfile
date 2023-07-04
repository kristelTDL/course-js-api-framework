FROM node:20

WORKDIR /api-test-automation

# copy everything in the directory: COPY
COPY package.json package.json
COPY config.js config.js
COPY tests tests

RUN npm install

# To run tests:
ENTRYPOINT ["npm"]