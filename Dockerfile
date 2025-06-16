# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if you have one)
# to install dependencies
COPY package*.json ./

# Install production dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the TypeScript code
RUN npm run build

# Expose the port the app runs on (default is 3000 as per src/config.ts)
EXPOSE 3012

# Command to run the server when the container starts
CMD ["node", "build/server.js"]
