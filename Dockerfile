FROM node:18-alpine

WORKDIR /app

# Correct COPY for root
COPY package*.json ./
RUN npm install

COPY . ./

EXPOSE 3012

CMD ["npm", "start"]
