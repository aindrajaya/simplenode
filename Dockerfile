# Use official Node.js LTS image
FROM node:18-slim

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json package-lock.json* ./
RUN npm ci --only=production || npm install --production

# Copy app source
COPY . .

# Expose the port the app listens on
EXPOSE 8080

# Start the app
CMD ["node", "index.js"]
