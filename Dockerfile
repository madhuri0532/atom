# Use the official Node.js LTS image as the base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available) to install dependencies
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app will run on (e.g., 3000 for Express)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]