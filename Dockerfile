FROM node:22.12-alpine AS builder

WORKDIR /app

# Create package.json directly inside Docker
RUN echo '{
  "name": "mcp-server",
  "version": "1.0.0",
  "main": "mcpServer.js",
  "scripts": {
    "start": "node mcpServer.js"
  },
  "dependencies": {
    "dotenv": "^16.0.0",
    "node-fetch": "^3.3.1"
  }
}' > package.json

# Install dependencies
RUN npm install

# Copy the rest of the project files (mcpServer.js, tools, etc.)
COPY . .

# Start MCP server
ENTRYPOINT ["node", "mcpServer.js"]


