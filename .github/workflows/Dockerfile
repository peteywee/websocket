# Use official Node.js LTS image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy only package.json and package-lock.json first for layer caching and efficiency
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . ./

# Expose the application port (edit as needed)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
