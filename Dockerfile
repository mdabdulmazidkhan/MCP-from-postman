# Use Node 22 Alpine image
FROM node:22.12-alpine AS builder

# Set working directory inside container
WORKDIR /app

# Copy package.json only first for caching npm install
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Expose default port (optional, if needed for HTTP)
EXPOSE 3000

# Start the MCP server
ENTRYPOINT ["node", "mcpServer.js"]
