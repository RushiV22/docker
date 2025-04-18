FROM node:18-alpine
RUN mkdir -p /app
WORKDIR /app
COPY package*.json /app/
ENV NODE_OPTIONS=--openssl-legacy-provider
RUN npm install 
COPY . /app/
EXPOSE 4200
CMD ["npm", "run", "start"]

#jsut a test
