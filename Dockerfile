# Use official Node.js LTS image
FROM node:latest

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --legacy-peer-deps

# Copy application source code
COPY . .

# Expose application port (change if needed)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]

