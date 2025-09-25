# Use official Node.js LTS image
FROM node:20-slim

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json (if exists)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy app source
COPY server.js .

# Expose app port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
