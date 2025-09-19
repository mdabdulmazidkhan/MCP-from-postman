FROM node:22.12-alpine AS builder

WORKDIR /app

# Copy all files at once
COPY . .

# Install dependencies
RUN npm install

# Start MCP server
ENTRYPOINT ["node", "mcpServer.js"]
