FROM node:16

# Create app directory
WORKDIR /relay


COPY ./package.json ./package-lock.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY ./ .

EXPOSE 8080
CMD [ "node", "server.js" ]