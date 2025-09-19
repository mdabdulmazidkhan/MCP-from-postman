FROM node:22.12-alpine AS builder

WORKDIR /app

# Copy all project files at once
COPY . .

# Install dependencies
RUN npm install

ENTRYPOINT ["node", "mcpServer.js"]

