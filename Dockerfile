# Multi-stage build for optimal image size and security
FROM node:20-alpine AS builder

WORKDIR /usr/src/app

# Copy dependency configuration files
COPY package*.json ./

# Install packages including devDependencies
RUN npm ci

# Copy application source code
COPY . .

# Compile frontend and server assets
RUN npm run build

# --- Stage 2: Production execution environment ---
FROM node:20-alpine

WORKDIR /usr/src/app

ENV NODE_ENV=production

# Copy package descriptors 
COPY package*.json ./

# Install only production dependencies for safety and speed
RUN npm ci --only=production

# Copy compiled resources and server code from builder
COPY --from=builder /usr/src/app/dist ./dist

EXPOSE 3000

# Start compiled server using Node.js
CMD ["npm", "start"]
