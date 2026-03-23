#stage 1
FROM node:20 as build
COPY package*.json ./
RUN npm install
COPY . . 
RUN npm run build
expose 8010
CMD ["node","index.js"]
