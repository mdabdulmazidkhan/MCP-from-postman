FROM node:22.12-alpine AS builder

WORKDIR /app

# Copy package.json only (package-lock.json optional)
COPY ./package.json ./

# Install dependencies
RUN npm install

# Copy everything else
COPY . .

# Start MCP server
ENTRYPOINT ["node", "mcpServer.js"]

