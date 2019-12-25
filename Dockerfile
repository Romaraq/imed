FROM node:10.16.2
WORKDIR /usr/app/user
EXPOSE 8001
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
CMD [ "npm", "start" ]

