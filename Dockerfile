FROM node:22.12-alpine AS builder

WORKDIR /app
COPY package.json ./       # Only copy package.json
RUN npm install

COPY . .

ENTRYPOINT ["node", "mcpServer.js"]
